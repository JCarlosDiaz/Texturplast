<!doctype html>
<html class="no-js" lang="en">
<?php 
include 'db/connect.php';
//$categoria_actual = $_GET['cat'];
//$producto_actual = $_GET['prod'];
?>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- ========== VIEWPORT META ========== -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- ========== PAGE TITLE ========== -->
    <title>Texturplast Contacto</title>

    <!-- ========== META TAGS ========== -->
    <meta name="description" content="Salt - Responsive Multipurpose HTML5 Template ">
    <meta name="keywords" content="business, responsive, multi-purpose">
    <meta name="author" content="ThemesEase">

    <!-- ========== FAVICON & APPLE ICONS ========== -->
    <link rel="shortcut icon" href="images/texturplast/icon-title.png">
    <link rel="apple-touch-icon" href="images/texturplast/icon-title.png">

    <!-- ========== MINIFIED VENDOR CSS ========== -->
    <link rel="stylesheet" href="styles/vendor.css">
    <link rel="stylesheet" href="vendor/hamburgers/hamburgers.min.css">
    <link rel="stylesheet" href="vendor/sweetalert2/dist/sweetalert2.min.css">


    <!-- ========== MAIN CSS ========== -->
    <link rel="stylesheet" href="styles/main.css">
    <link rel="stylesheet" href="styles/contact.css">
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans:400,600,700" rel="stylesheet">

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
<body class="header-shadow light-header">

    <!-- ========== LOADER ========== -->
    <div class="page-loader">
        <div class="spinner"></div>
    </div>

    <!-- ========== OVERPLAY ========== -->
    <section id="overplay">
        <div class="overplay" id="overplay">
            <div class="content-section">
                <div class="container">
                    <div class="row">
                    <div class="col-md-12 text-center">
                            <div class="productos">
                                <a href="productos.php?cat=pinturas&prod=textur-premium">PRODUCTOS</a>
                            </div> 
                        </div>
                        <div class="col-md-12 text-center">
                            <div class="contacto">
                                <a href="index.php">INICIO</a>
                            </div> 
                        </div>
                        <div class="col-md-12 social-container">
                            <a target="_blank" href="https://www.facebook.com/texturplast.mex/"><img src="images/texturplast/facew.svg" width="35px" alt=""></a>
                            <a target="_blank" href="https://www.facebook.com/texturplast.mex/"><img src="images/texturplast/instagramwhite.svg" width="35px" alt=""></a>
                            <a target="_blank" href="https://www.linkedin.com/company/33311358/admin/overview/"><img src="images/texturplast/linkw.svg" width="35px" alt=""></a>
                            
                        </div>
                    </div>
                </div>
            </div>
            <!-- <div class="overclose"><img src="images/iconocerrarventana.png" alt=""></div>  -->
        </div>
    </section>
    <!-- ========== END OVERPLAY ========== -->

    <!-- ========== HEADER ========== -->
    <div class="header">
        <div class="container-fluid">
            <nav class="menu">
                <div class="logo">
                    <a href="index.php"><img src="images/texturplast/logo-black.png" alt="Texturplast" class="logo-img"></a>
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

        <?php 
            $db->Consultar("SELECT * FROM productos");
            $row = $db->ObtenerArray();
            $titulo =$row['nombre'];
            $des =$row['descripcion'];
            $cate =$row['categoria'];
            $rendi =$row['rendimiento'];
            $carac =$row['caracteristicas'];
            $image =$row['imagen'];
            $ficha =$row['ficha'];
        ?>

        <section id="home">
            <!-- ========== REVOLUTION SLIDER ========== -->
            <div id="rev_slider_46_1_wrapper" class="rev_slider_wrapper fullscreen-container" data-alias="notgeneric1" style="background-color:transparent;padding:0px;">

                <div id="rev_slider_46_1" class="rev_slider fullscreenbanner" style="display:none;" data-version="5.0.7">
                    <ul>	<!-- SLIDE  -->
                        <li data-index="rs-148" data-transition="fade" data-slotamount="default"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-thumb="images/demo-img-5.jpg"  data-rotate="0"  data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off"  data-title="Welcome" data-description="">
                            <!-- MAIN IMAGE -->
                            <img src="images/texturplast/contacto-banner.jpg"  alt=""   data-bgposition="center center" data-kenburns="on" data-duration="30000" data-ease="Linear.easeNone" data-scalestart="100" data-scaleend="125" data-rotatestart="0" data-rotateend="0" data-offsetstart="0 0" data-offsetend="0 0" data-bgparallax="10" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->
    
    
                            <!-- LAYER NR. 1 -->
                            <div class="tp-caption NotGeneric-Title tp-resizeme rs-parallaxlevel-0"
                                id="slide-148-layer-1"
                                data-x="['center','center','center','center']" data-hoffset="['-350','-250','-220','-150']"
                                data-y="['middle','middle','middle','middle']" data-voffset="['-25','-50','-80','-50']"
                                data-fontsize="['32','32','32','24']"
                                data-lineheight="['42','42','42','34']"
                                data-width="['350','350','200','200']"
                                data-height="none"
                                data-whitespace="normal"
                                data-transform_idle="o:1;"
                                data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
                                data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                                data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                                data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                                data-start="1000"
                                data-splitin="none"
                                data-splitout="none"
                                data-responsive_offset="on"
                                data-elementdelay="0.05"
                                style="z-index: 5;text-align:center; white-space: normal;color:#fff;letter-spacing: 2px; text-aling:center;">HABLA CON NUESTROS EXPERTOS<br>
                            </div>

                            <!-- LAYER NR. 4 -->
                            <div class="tp-caption rev-scroll-btn  rs-parallaxlevel-0"
                                id="slide-148-layer-9"
                                data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                data-y="['bottom','bottom','bottom','bottom']" data-voffset="['50','50','50','50']"
                                data-width="35"
                                data-height="55"
                                data-whitespace="nowrap"
                                data-transform_idle="o:1;"
                                data-style_hover="cursor:pointer;"
    
                                data-transform_in="y:50px;opacity:0;s:1500;e:Power3.easeInOut;"
                                data-transform_out="y:50px;opacity:0;s:1000;s:1000;"
                                data-start="2000"
                                data-splitin="none"
                                data-splitout="none"
                                data-actions='[{"event":"click","action":"scrollbelow","offset":"0px"}]'
                                data-basealign="slide"
                                data-responsive_offset="off"
                                data-responsive="off"
    
                                style="z-index: 9; min-width: 35px; max-width: 35px; max-width: 55px; max-width: 55px; white-space: nowrap; font-size: px; line-height: px; font-weight: 100;border-color:rgba(255, 255, 255, 0.50);border-style:solid;border-width:1px;border-radius:23px 23px 23px 23px;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;">
                                                <span>
                                                </span>
    
                            </div>
                        </li>    
                    </ul>
                    <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
                </div> <!-- end rev_slider -->
            </div> <!-- end rev_slider_wrapper -->
        </section>
        
        <section id="complete-contact" class="content-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-center">
                        <div class="tab-style-8">
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active"><a href="#home-8" aria-controls="home-8" role="tab" data-toggle="tab">Asesorías y dudas generales</a></li>
                                <li role="presentation"><a href="#profile-8" aria-controls="profile-8" role="tab" data-toggle="tab">Problema con un producto</a></li>
                            </ul>
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade in active" id="home-8">
                                    <div class="col-md-12">
                                            <form class="form-problema" id="form" method="post" name="form" action="send-email-asesoria.php">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="nombre">Nombre</label>
                                                            <input type="text" class="form-control input-style-2" id="nombre" name="nombre" placeholder=" " required="">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="apellido">Apellido</label>
                                                            <input type="text" class="form-control input-style-2" id="apellido" name="apellido" placeholder="" required="">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="correo">Correo</label>
                                                            <input type="email" class="form-control input-style-2" id="correo" name="correo" placeholder="" required="">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="telefono">Teléfono</label>
                                                            <input type="text" class="form-control input-style-2" id="telefono" name="telefono" placeholder="" required="">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="Estado">Estado</label>
                                                        <select name="estado" id="estado-asesoria">
                                                            <option  selected="selected" value="Aguascalientes">Aguascalientes</option>
                                                            <option value="Baja California">Baja California</option>
                                                            <option value="Baja California Sur">Baja California Sur</option>
                                                            <option value="Campeche">Campeche</option>
                                                            <option value="Chiapas">Chiapas</option>
                                                            <option value="Chihuahua">Chihuahua</option>
                                                            <option value="Ciudad de Mexico">Ciudad de México</option>
                                                            <option value="Coahuila">Coahuila</option>
                                                            <option value="Colima">Colima</option>
                                                            <option value="Durango">Durango</option>
                                                            <option value="Guanajuato">Guanajuato</option>
                                                            <option value="Guerrero">Guerrero</option>
                                                            <option value="Hidalgo">Hidalgo</option>
                                                            <option value="Jalisco">Jalisco</option>
                                                            <option value="Estado de Mexico">Estado de México</option>
                                                            <option value="Michoacan">Michoacán</option>
                                                            <option value="Morelos">Morelos</option>
                                                            <option value="Nayarit">Nayarit</option>
                                                            <option value="Nuevo Leon">Nuevo León</option>
                                                            <option value="Oaxaca">Oaxaca</option>
                                                            <option value="Puebla">Puebla</option>
                                                            <option value="Queretaro">Querétaro</option>
                                                            <option value="QuintanaRoo">Quintana Roo</option>
                                                            <option value="San Luis Potosí">San Luis Potosí</option>
                                                            <option value="Sinaloa">Sinaloa</option>
                                                            <option value="Sonora">Sonora</option>
                                                            <option value="Tabasco">Tabasco</option>
                                                            <option value="Tamaulipas">Tamaulipas</option>
                                                            <option value="Tlaxcala">Tlaxcala</option>
                                                            <option value="Veracruz">Veracruz</option>
                                                            <option value="Yucatan">Yucatán</option>
                                                            <option value="Zacatecas">Zacatecas</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="codigo">Codigo Postal</label>
                                                        <input type="number" class="form-control input-style-2" id="codigo" name="codigo" placeholder="" required="">
                                                    </div>
                                                </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <div class="col-md-6 zero-padding">
                                                                <label class="alinear" for="pregunta">Pregunta</label>
                                                                <p class="alinear">Por favor dinos cómo podemos ayudarte con el mayor detalle posible</p>
                                                            </div>
                                                            <div class="col-md-6 abc">
                                                                    <textarea class="form-control input-style-2" id="pregunta" name="pregunta" placeholder="" required="" rows="3"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 mb20">
                                                        <div class="form-check col-md-8" style="padding-left:0;">
                                                            <p style="display: inline-block; font-size: 12px;">¿Quieres enterarte de ofertas especiales y noticias por correo?   </p>
                                                            <input id="newsletter" class="st-checkbox" name="newsletter" type="checkbox" value="1">
                                                            <label for="newsletter" class="st-checkbox-1-label">Sí</label>
                                                            <!-- <label for="texto" class="st-checkbox-2-label">Si</label> -->
                                                        </div>
                                                        <div class="col-md-4 cl">
                                                            <div class="form-group">
                                                                    <button type="submit" class="st-btn primary-btn hvr-back hvr-sweep-to-right pull-right boton-s">Enviar</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                                <div class="g-recaptcha" data-sitekey="6Lcx_G8UAAAAACQ5PFJXkEyZxkBeCdzh0oR_IPw-" data-callback="reCaptchaVerify"></div>
                                                        </div>
                                                    </div>
                                            </form>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="profile-8">
                                    <div class="col-md-12">
                                        <form class="form-problema" id="form2" method="post" name="form2" action="v3.php">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="nombre">Nombre</label>
                                                        <input type="text" class="form-control input-style-2" id="nombre" name="nombre" placeholder="" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="apellido">Apellido</label>
                                                        <input type="text" class="form-control input-style-2" id="apellido" name="apellido" placeholder="" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                        <div class="form-group">
                                                                <label for="correo">Correo</label>
                                                                <input type="email" class="form-control input-style-2" id="correo" name="correo" placeholder="" required="">
                                                            </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="telefono">Telefono</label>
                                                        <input type="number" class="form-control input-style-2" id="telefono" name="telefono" placeholder="" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="Estado">Estado</label>
                                                        <select name="estado" id="estado">
                                                            <option  selected="selected" value="Aguascalientes">Aguascalientes</option>
                                                            <option value="Baja California">Baja California</option>
                                                            <option value="Baja California Sur">Baja California Sur</option>
                                                            <option value="Campeche">Campeche</option>
                                                            <option value="Chiapas">Chiapas</option>
                                                            <option value="Chihuahua">Chihuahua</option>
                                                            <option value="Ciudad de Mexico">Ciudad de México</option>
                                                            <option value="Coahuila">Coahuila</option>
                                                            <option value="Colima">Colima</option>
                                                            <option value="Durango">Durango</option>
                                                            <option value="Guanajuato">Guanajuato</option>
                                                            <option value="Guerrero">Guerrero</option>
                                                            <option value="Hidalgo">Hidalgo</option>
                                                            <option value="Jalisco">Jalisco</option>
                                                            <option value="Estado de Mexico">Estado de México</option>
                                                            <option value="Michoacan">Michoacán</option>
                                                            <option value="Morelos">Morelos</option>
                                                            <option value="Nayarit">Nayarit</option>
                                                            <option value="Nuevo Leon">Nuevo León</option>
                                                            <option value="Oaxaca">Oaxaca</option>
                                                            <option value="Puebla">Puebla</option>
                                                            <option value="Queretaro">Querétaro</option>
                                                            <option value="Quintana Roo">Quintana Roo</option>
                                                            <option value="San Luis Potosí">San Luis Potosí</option>
                                                            <option value="Sinaloa">Sinaloa</option>
                                                            <option value="Sonora">Sonora</option>
                                                            <option value="Tabasco">Tabasco</option>
                                                            <option value="Tamaulipas">Tamaulipas</option>
                                                            <option value="Tlaxcala">Tlaxcala</option>
                                                            <option value="Veracruz">Veracruz</option>
                                                            <option value="Yucatan">Yucatán</option>
                                                            <option value="Zacatecas">Zacatecas</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="codigo">Codigo Postal</label>
                                                        <input type="number" class="form-control input-style-2" id="codigo" name="codigo" placeholder="" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="Estado">Categoria de producto</label>
                                                        <select name="producto-categoria" id="producto-categoria-selector">
                                                            <option value="No Especificado" selected>Seleccione una categoria</option>
                                                            <option value="Pinturas">Pinturas</option>
                                                            <option value="Selladores">Selladores y Adhesivos</option>
                                                            <option value="Pastas">Pastas acrílicas</option>
                                                            <option value="Impermeabilizantes">Impermeabilizantes</option>
                                                            <option value="Granitos">Granitos Planchados</option>
                                                            <option value="Pegazulejos">Pegazulejos</option>
                                                            <option value="Especiales">Productos Especiales</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="Estado">Producto</label>
                                                        <select name="producto-producto" id="producto-producto-selector">
                                                            <option  selected="selected" value="No Especificado">Seleccione un producto</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="area">Área estimada de uso</label>
                                                        <input type="text" class="form-control input-style-2" id="area" name="area" placeholder="" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group radial">
                                                            <label for="radio-2">Comprobante de compra</label>
                                                            <div class="col-md-4 col-sm-4 text-left mb20">
                                                                <input id="radio-2" class="st-radio" name="radio-2" type="radio" value="Recibo de tienda" checked="">
                                                                <label for="radio-2" class="st-radio-1-label">Recibo de tienda</label>
                                                            </div>
                                    
                                                            <div class="col-md-4 col-sm-4 text-left mb20">
                                                                <input id="radio-3" class="st-radio" name="radio-2" type="radio" value="Recibo digital">
                                                                <label for="radio-3" class="st-radio-1-label">Recibo digital</label>
                                                            </div>
                                    
                                                            <div class="col-md-4 col-sm-4 text-left mb20">
                                                                <input id="radio-4" class="st-radio" name="radio-2" type="radio" value="Factura">
                                                                <label for="radio-4" class="st-radio-1-label">Factura</label>
                                                            </div>
                                                            <div class="col-md-4 col-sm-4 text-left mb20">
                                                                <input id="radio-5" class="st-radio" name="radio-2" type="radio" value="Contenedor de producto">
                                                                <label for="radio-5" class="st-radio-1-label">Contenedor de producto</label>
                                                            </div>
                                                            <div class="col-md-4 col-sm-4 text-left mb20">
                                                                <input id="radio-6" class="st-radio" name="radio-2" type="radio" value="Ninguno">
                                                                <label for="radio-6" class="st-radio-1-label">Ninguno</label>
                                                            </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <div class="col-md-6 zero-padding">
                                                            <label for="message">Describenos el problema</label>
                                                            <p>Por favor dinos cómo podemos ayudarte con el mayor detalle posible</p>
                                                        </div>
                                                        <div class="col-md-6" style="padding: 0 0 0 15px">
                                                                <textarea class="form-control input-style-2" id="mensaje" name="mensaje" placeholder="" required="" rows="3"></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 mb20">
                                                        <div class="form-check col-md-8" style="padding-left:0;">
                                                            
                                                            <p style="display: inline-block; font-size: 12px;">¿Quieres enterarte de ofertas especiales y noticias por correo?   </p>
                                                            <input id="checkbox-5" class="st-checkbox" name="checkbox-5" type="checkbox" >
                                                            <label for="checkbox-5" class="st-checkbox-1-label">Sí</label>
                                                            <!-- <label for="texto" class="st-checkbox-2-label">Si</label> -->
                                                        </div>
                                                        <div class="col-md-4 cl">
                                                            <div class="form-group">
                                                                    <button type="submit" class="st-btn primary-btn hvr-back hvr-sweep-to-right pull-right">Enviar</button>
                                                            </div>
                                                        </div>
                                                </div>
                                                <div class="col-md-6">
                                                        <div class="form-group">
                                                                <div class="g-recaptcha" data-sitekey="6Lcx_G8UAAAAACQ5PFJXkEyZxkBeCdzh0oR_IPw-" data-callback="reCaptchaVerify"></div>
                                                        </div>
                                                </div>
                                        </form>
                                    </div>
                                </div>
                            </div> <!-- end tab-content -->
                        </div> <!-- end tab-style-8 -->
                    </div> <!-- end col-md-8 -->
                </div>
            </div>
        </section>

        <section class="content-section" id="cont">
            <div class="container">
                <div class="row">
                    <div class="col-md-offset-1 col-md-3 col-sm-4 col-xs-12 plcont">
                        <h4><a class="mail" href="mailto:ventas@texturplast.com">ventas@texturplast.com</a></h4>
                        <a href="tel:+522383830982"><p class="numero">(238) 383 0982</p></a>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="social-container">
                             <a target="_blank" href="https://www.facebook.com/texturplast.mex/">
                             <img src="images/texturplast/Face.svg" width="40px" alt=""></a>
                            <a target="_blank" href="https://www.facebook.com/texturplast.mex/">
                            <img src="images/texturplast/instagramblack.svg" width="40px" alt=""></a>
                            <img src="images/texturplast/Linkedin.svg" width="40px" alt="">
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <p class="direccion">3 sur 513 Colonia Centro,<br>Tehuacán, Puebla C.P.75700</p>
                        <a class="map underline" href="https://goo.gl/maps/B2r98eKtCz82" target="blank">Mostrar Ubicación</a>
                    </div>
                </div>
            </div>
        </section>

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
                <!-- ========== right side ========== -->
                <div class="col-md-6" style="text-align: center;">
                    <div class="col-md-3 col-sm-3 col-xs-2 lefttxt">
                        <img src="images/texturplast/isowhite.svg" width="50px" class="mb20 lefttxt" alt="">
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-3 cr">
                        <a href="#"><h5 class="footer-title">Inicio</h5></a>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-3 cr cl">
                        <a href="productos.php?cat=pinturas&prod=textur-premium"><h5 class="footer-title">Productos</h5></a>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-4 mb20 cr cl">
                        <a href="contacto.php"><h5 class="footer-title">Contacto</h5></a>
                    </div>
                </div>
                <div class="col-md-6">
                    <p style="float: right; color:white;">&copy; Texturplast | Todos los derechos reservados</p>
                </div><!-- end row -->
            </div> <!-- end footer-top -->
        </div> <!-- end footer-top -->

        <!-- ========== footer-middle ========== -->
        <!-- <div class="container footer-middle">
            <div class="row">
                <div class="col-md-6">
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-2x fa-facebook"></i></a>
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-2x fa-instagram"></i></a>
                </div> 
                <div class="col-md-6 text-right">
                    
                    <h6 class="footer-title lowercase"><i class="fa fa-phone"></i> +52 (238) 131 6241 <span class="ml10 mr10">|</span> <i class="fa fa-envelope"></i> mail@example.com</h6>
                </div>
            </div> 
        </div>  -->

        <!-- ========== Footer - last section ========== -->
        <!-- <div class="footer-last">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        &copy; 2018
                    </div>
                    <div class="col-md-6 text-right">
                        <a href="#" class="mr10">Terms of Use</a> <a href="#">Privacy Policy</a>
                    </div>
                </div>
            </div> 
        </div>  -->

        <!-- ========== Scroll to top button ========== -->
        <div class="scroll-to-top trans"><i class="fa fa-angle-up"></i></div>
    </footer>



	<script src="scripts/vendor.js"></script>
	<script src="scripts/plugins.js"></script>
    <script src="scripts/main.js"></script>
    <script src="scripts/init-contact-slider.js"></script>
    <script src="vendor/sweetalert2/dist/sweetalert2.min.js"></script>
    <script src="vendor/jquery-form/jquery.form.js" ></script>
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <script src="scripts/custom.js"></script>
    <script>
        var doSubmit;
        function reCaptchaVerify(response) {
            if (response === document.querySelector('.g-recaptcha-response').value) {
                doSubmit = true;
                console.log(doSubmit);
            } else {
                doSubmit = false;
            }
        }
        document.forms['form'].addEventListener('submit', function (e) {
            if (doSubmit) {
                // swal("¡Gracias!", "Nos pondremos en contacto contigo a la brevedad posible.", "success");
            }
            else {
                e.preventDefault();
                swal("Error!", "Error, confirma el Captcha", "error");
            }
        });
        $(document).ready(function () {
            // bind 'myForm' and provide a simple callback function 
            var options = {
                success: function () {
                    $("#form").clearForm();
                    swal("¡Gracias!", "Nos pondremos en contacto contigo a la brevedad posible.", "success");
                }
            };
            $("#form").ajaxForm(options);
            $("#form2").ajaxForm(options);
            
        }); 
    </script>
    
    
</body>

</html>
