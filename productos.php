<!doctype html>
<html class="no-js" lang="en">
<?php 
include 'db/connect.php';
$categoria_actual = $_GET['cat'];
$producto_actual = $_GET['prod'];
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
<body class="header-shadow dark-header">

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
                                <a href="index.php">INICIO</a>
                            </div> 
                        </div>
                        <div class="col-md-12 text-center">
                            <div class="contacto">
                                <a href="contacto.php">CONTACTO</a>
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
                <div class="menuham-container hamb-white">
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
            $db->Consultar("SELECT * FROM productos WHERE codigo='$producto_actual'");
            $row = $db->ObtenerArray();
            $titulo =$row['nombre'];
            $des =$row['descripcion'];
            $cate =$row['categoria'];
            $rendi =$row['rendimiento'];
            $carac =$row['caracteristicas'];
            $image =$row['imagen'];
            $ficha =$row['ficha'];
        ?>
        
        <section class="content-section" id="main-descripcion">
            <div class="container-fluid">
                <div class="row like-table">
                    <div class="col-md-offset-1 col-md-3 descripcion-column">
                        <p class="descripcion-producto">
                            <?php
                                print "$des";
                            ?>
                        </p>
                        <p class="rendimiento-titulo">Rendimiento</p>
                        <p class="rendimiento-producto" style=" color:black;"><?php print "$rendi" ?></p>
                    </div>
                    <div class="col-md-5">
                        <div class="image-container">
                            <img class="img-responsive col-center" src="<?php echo $image; ?>" alt="">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <h3 class="nombre-producto mb20">
                            <?php
                                print "$titulo";
                            ?>
                        </h3>
                        <p class="detalles-producto"><?php print "$carac" ?></p>
                        <a class="ficha-descarga" target="blank" style="font-size:14px;" href="<?php print "$ficha" ?>">Descarga la ficha técnica</a>
                        <!-- <img class="descarga2" src="images/texturplast/descarga.png" alt="">  -->
                    </div>
                    <!-- <div class="col-md-12 col-xs-12 descripcion-column-mob">
                        <p class="descripcion-producto">Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur dignissimos magni, deleniti molestiae rerum officiis libero labore laudantium, eaque vel reiciendis sapiente architecto optio? Nihil aliquid cumque impedit officia aperiam.</p>
                        <p class="rendimiento-titulo">Rendimiento</p>
                        <p class="rendimiento-producto">12 a 14 m2 una sola mano</p>
                    </div> -->
                    
                </div>
                
            </div>
        </section>
        
        <section class="content-section" id="productos2">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-10 col-center">
                        <div class="tab-style-3 producto">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation" class="active"><a href="#pinturas" aria-controls="pinturas" role="tab" data-toggle="tab">Pinturas Arquitectónicas</a></li>
                                    <li role="presentation"><a href="#acrilicas" aria-controls="acrilicas" role="tab" data-toggle="tab">Pinturas Acrílicas</a></li>
                                    <li role="presentation"><a href="#selladores" aria-controls="selladores" role="tab" data-toggle="tab">Selladores y Adhesivos</a></li>
                                    <li role="presentation" id="prueba"><a href="#pastas" aria-controls="pastas" role="tab" data-toggle="tab"> Pastas Acrílicas</a></li>
                                    <li role="presentation"><a href="#impermeabiizantes" aria-controls="impermeabiizantes" role="tab" data-toggle="tab">Impermeabilizantes</a></li>
                                    <li role="presentation"><a href="#granitos" aria-controls="granitos" role="tab" data-toggle="tab">Granitos planchados</a></li>
                                    <li role="presentation"><a href="#pegazulejos" aria-controls="pegazulejos" role="tab" data-toggle="tab"> Pegazulejos</a></li>
                                    <li role="presentation"><a href="#especial" aria-controls="especial" role="tab" data-toggle="tab"> Productos Especiales</a></li>
                                    <!--  -->
                                </ul> <!-- end nav-tabs -->
                                
    
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade in active" id="pinturas">
                                        <ul>
                                            <?php
                                                $db->Consultar("SELECT * FROM productos WHERE categoria='pinturas'");
                                                while($row = $db->ObtenerArray()){
                                                    $cat = $row['categoria'];
                                                    $cod = $row['codigo'];
                                                    $nombre = $row['nombre'];
                                                    $img = $row['imagen'];
                                                    if( $img != ''){
                                                        print "<li><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }else{
                                                        print "<li class='invalid-product'><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }
                                                }
                                            ?>
                                            
                                        </ul>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="acrilicas">
                                        <ul>
                                            <?php
                                                $db->Consultar("SELECT * FROM productos WHERE categoria='acrilicas'");
                                                while($row = $db->ObtenerArray()){
                                                    $cat = $row['categoria'];
                                                    $cod = $row['codigo'];
                                                    $nombre = $row['nombre'];
                                                    $img = $row['imagen'];
                                                    if( $img != ''){
                                                        print "<li><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }else{
                                                        print "<li class='invalid-product'><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }
                                                }
                                            ?>
                                            
                                        </ul>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="selladores">
                                        <ul>
                                            <?php
                                                $db->Consultar("SELECT * FROM productos WHERE categoria='selladores-adhesivos'");
                                                while($row = $db->ObtenerArray()){
                                                    $cat = $row['categoria'];
                                                    $cod = $row['codigo'];
                                                    $nombre = $row['nombre'];
                                                    $img = $row['imagen'];
                                                    if( $img != ''){
                                                        print "<li><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }else{
                                                        print "<li class='invalid-product'><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }
                                                }
                                            ?>
                                        </ul>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="pastas">
                                        <ul>
                                            <?php
                                                $db->Consultar("SELECT * FROM productos WHERE categoria='pastas-acrilicas'");
                                                while($row = $db->ObtenerArray()){
                                                    $cat = $row['categoria'];
                                                    $cod = $row['codigo'];
                                                    $nombre = $row['nombre'];
                                                    $img = $row['imagen'];
                                                    if( $img != ''){
                                                        print "<li><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }else{
                                                        print "<li class='invalid-product'><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }
                                                }
                                            ?>
                                        </ul>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="impermeabiizantes">
                                        <ul>
                                            <?php
                                                $db->Consultar("SELECT * FROM productos WHERE categoria='impermeabilizantes'");
                                                while($row = $db->ObtenerArray()){
                                                    $cat = $row['categoria'];
                                                    $cod = $row['codigo'];
                                                    $nombre = $row['nombre'];
                                                    $img = $row['imagen'];
                                                    if( $img != ''){
                                                        print "<li><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }else{
                                                        print "<li class='invalid-product'><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }
                                                }
                                            ?>
                                        </ul>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="granitos">
                                        <ul>
                                            <?php
                                                $db->Consultar("SELECT * FROM productos WHERE categoria='granitos-planchados'");
                                                while($row = $db->ObtenerArray()){
                                                    $cat = $row['categoria'];
                                                    $cod = $row['codigo'];
                                                    $nombre = $row['nombre'];
                                                    $img = $row['imagen'];
                                                    if( $img != ''){
                                                        print "<li><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }else{
                                                        print "<li class='invalid-product'><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }
                                                }
                                            ?>
                                        </ul>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="pegazulejos">
                                        <ul>
                                            <?php
                                                $db->Consultar("SELECT * FROM productos WHERE categoria='pegazulejos'");
                                                while($row = $db->ObtenerArray()){
                                                    $cat = $row['categoria'];
                                                    $cod = $row['codigo'];
                                                    $nombre = $row['nombre'];
                                                    $img = $row['imagen'];
                                                    if( $img != ''){
                                                        print "<li><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }else{
                                                        print "<li class='invalid-product'><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }
                                                }
                                            ?>
                                        </ul>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="especial">
                                        <ul class="last-list"> 
                                            <?php
                                                $db->Consultar("SELECT * FROM productos WHERE categoria='productos-especiales'");
                                                while($row = $db->ObtenerArray()){
                                                    $cat = $row['categoria'];
                                                    $cod = $row['codigo'];
                                                    $nombre = $row['nombre'];
                                                    $img = $row['imagen'];
                                                    if( $img != ''){
                                                        print "<li><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }else{
                                                        print "<li class='invalid-product'><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }
                                                }
                                            ?>
                                        </ul>
                                    </div>
                                    <!-- <div role="tabpanel" class="tab-pane fade" id="especiales">
                                        <ul>
                                        <?php
                                                $db->Consultar("SELECT * FROM productos WHERE categoria='productos-especiales'");
                                                while($row = $db->ObtenerArray()){
                                                    $cat = $row['categoria'];
                                                    $cod = $row['codigo'];
                                                    $nombre = $row['nombre'];
                                                    $img = $row['imagen'];
                                                    if( $img != ''){
                                                        print "<li><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }else{
                                                        print "<li class='invalid-product'><a href='productos.php?cat=$cat&prod=$cod'>$nombre</a></li>";
                                                    }
                                                }
                                            ?>
                                        </ul>
                                    </div> -->
                                </div> <!-- end tab-content -->
                        </div> <!-- end tab-style-3 -->
                    </div>
                </div>
            </div>
        </section>

        <section class="content-section" id="uso-section">
            <div class="container-fluid">
                <div class="row navigation-row">
                    <div class="col-md-12">
                        <div class="tab-style-5">
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active"><a href="#home-5" aria-controls="home-5" role="tab" data-toggle="tab"> Uso</a></li>
                                <li role="presentation"><a href="#profile-5" aria-controls="profile-5" role="tab" data-toggle="tab"> Garantía</a></li>
                            </ul> <!-- end nav-tabs -->
                        </div> <!-- end tab-style-5 -->
                    </div>
                </div>
                <div class="row content-row">
                    <div class="col-md-10 col-center">
                        <!-- Tab panes -->
                        <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade in active" id="home-5">
                                    <div class="col-md-12 icons-row row">
                                        <div class="col-md-3 col-sm-3 col-xs-6">
                                            <img class="svgimage img-responsive col-center" src="images/texturplast/icono secado.svg" alt="" >
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-6">
                                            <img class="svgimage img-responsive col-center" src="images/texturplast/icono rendimiento.svg" alt="" >
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-6">
                                            <img class="svgimage img-responsive col-center" src="images/texturplast/icono taman_os.svg" alt="" >
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-6">
                                            <img class="svgimage img-responsive col-center" src="images/texturplast/icono lavabilidad.svg" alt="">
                                        </div>
                                        <!-- <div class="col-md-3 col-sm-3 col-xs-6">
                                            <img src="images/texturplast/uso-2.jpg" class="img-responsive col-center" alt="">
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-6">
                                            <img src="images/texturplast/uso-3.jpg" class="img-responsive col-center" alt="">
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-6">
                                            <img src="images/texturplast/uso-4.jpg" class="img-responsive col-center" alt="">
                                        </div> -->
                                    </div>
                                    <!-- <div class="col-sm-6 col-xs-12">
                                        <h3 class="feature-title">Preparación de la superficie</h3>
                                        <p class="desc-black">Remover con espátula o cepillo de alambre la pintura que se encuentre en mal estado.</p>
                                    </div>
                                    <div class="col-sm-6 col-xs-12">
                                        <h3 class="feature-title">Limpieza de la superficie</h3>
                                        <p class="desc-black">Limpiar la superficie de polvo o grasa para asegurarnos de tener una buena adherencia. Deberá estar libre completamente de humedad para no tener problemas de desprendimientos.</p>
                                    </div>
                                    <div class="col-sm-6 col-xs-12">
                                        <h3 class="feature-title">Preparación del producto</h3>
                                        <p class="desc-black">Mezclar bien la pintura y después diluir con agua limpia en cantidades que pueden ser desde un 10% hasta un 20% dependiendo de la viscocidad que se requiera para aplicarse ya sea con rodillo, brocha o pistola airless.</p>
                                    </div>
                                    <div class="col-sm-6 col-xs-12">
                                        <h3 class="feature-title">Aplicación del producto</h3>
                                        <p class="desc-black">Aplique Textur Premium&reg; a 2 manos con brocha, rodillo o equipo de aspersión airless, dejando secar 60 minutos entre mano y mano.</p>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="col-sm-6 d-pad col-xs-12 cl">
                                            <h3 class="feature-title">Sugerencias</h3>
                                            <p class="desc-black">Se recomienda sellar la superficie con sellador 5x1 Texturplast para obtener el mejor rendimiento y anclaje de la pintura.</p>
                                        </div>
                                        <div class="col-sm-6 col-xs-12 cl">
                                            <h3 class="feature-title">Limpieza</h3>
                                            <p class="desc-black">En caso necesario lave sus manos y equipos de aplicación en un recipiente con agua.</p>
                                        </div>
                                    </div> -->
                                    <?php 
                                        $db->Consultar("SELECT * FROM productos WHERE codigo='$producto_actual'");
                                        $row = $db->ObtenerArray();
                                        $cat = $row['categoria'];
                                        $a = $row['prepSuperficie'];
                                        $b = $row['preproducto'];
                                        $c = $row['sugerencias'];
                                        $d = $row['limpsuperficie'];
                                        $e = $row['apli_producto'];
                                        $f = $row['limpieza'];
                                        $g = $row['sellado_superficie'];
                                        $h = $row['reparacion_grietas'];
                                        $i = $row['pre_apli_producto'];
                                        $j = $row['apli_producto'];
                                        switch ($cat) {
                                            case 'pinturas':
                                                print '<div class="col-sm-6 col-xs-12">
                                                <h3 class="feature-title">Preparación de la superficie</h3>
                                                <p class="desc-black">'.$a.'</p>
                                                </div>
                                                <div class="col-sm-6 col-xs-12">
                                                    <h3 class="feature-title">Limpieza de la superficie</h3>
                                                    <p class="desc-black">'.$d.'</p>
                                                </div>
                                                <div class="col-sm-6 col-xs-12">
                                                    <h3 class="feature-title">Preparación del producto</h3>
                                                    <p class="desc-black">'.$b.'</p>
                                                </div>
                                                <div class="col-sm-6 col-xs-12">
                                                    <h3 class="feature-title">Aplicación del producto</h3>
                                                    <p class="desc-black">'.$e.'</p>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="col-sm-6 d-pad col-xs-12 cl">
                                                        <h3 class="feature-title">Sugerencias</h3>
                                                        <p class="desc-black">'.$c.'</p>
                                                    </div>
                                                    <div class="col-sm-6 col-xs-12 cl">
                                                        <h3 class="feature-title">Limpieza</h3>
                                                        <p class="desc-black">'.$f.'</p>
                                                    </div>
                                                </div>';
                                            break;
                                            case 'acrilicas':
                                                print '<div class="col-sm-6 col-xs-12">
                                                    <h3 class="feature-title">Preparación de la superficie</h3>
                                                    <p class="desc-black">'.$a.'</p>
                                                </div>
                                                <div class="col-sm-6 col-xs-12">
                                                    <h3 class="feature-title">Limpieza de la superficie</h3>
                                                    <p class="desc-black">'.$d.'</p>
                                                </div>
                                                <div class="col-sm-6 col-xs-12">
                                                    <h3 class="feature-title">Aplicación de la pintura</h3>
                                                    <p class="desc-black">'.$j.'</p>
                                                </div>';
                                            break;
                                            case 'selladores-adhesivos':
                                                print '<div class="col-sm-6 col-xs-12">
                                                    <h3 class="feature-title">Preparación de la superficie</h3>
                                                    <p class="desc-black">'.$a.'</p>
                                                </div>
                                                <div class="col-sm-6 col-xs-12">
                                                    <h3 class="feature-title">Limpieza de la superficie</h3>
                                                    <p class="desc-black">'.$d.'</p>
                                                </div>
                                                <div class="col-sm-6 col-xs-12">
                                                    <h3 class="feature-title">Sellado de la superficie</h3>
                                                    <p class="desc-black">'.$g.'</p>
                                                </div>';
                                            break;
                                            case 'impermeabiizantes':
                                                print '<div class="col-sm-6 col-xs-12">
                                                    <h3 class="feature-title">Preparación de la superficie</h3>
                                                    <p class="desc-black">'.$a.'</p>
                                                </div>
                                                <div class="col-sm-6 col-xs-12">
                                                    <h3 class="feature-title">Limpieza de la superficie</h3>
                                                    <p class="desc-black">'.$d.'</p>
                                                </div>
                                                <div class="col-sm-6 col-xs-12">
                                                    <h3 class="feature-title">Sellado de la superficie</h3>
                                                    <p class="desc-black">'.$g.'</p>
                                                </div>
                                                <div class="col-sm-6 col-xs-12">
                                                    <h3 class="feature-title">Reparación de grietas</h3>
                                                    <p class="desc-black">'.$h.'</p>
                                                </div>
                                                <div class="col-sm-6 col-xs-12">
                                                    <h3 class="feature-title">Preparación y aplicación del producto</h3>
                                                    <p class="desc-black">'.$i.'</p>
                                                </div>';
                                            break;
                                            default:
                                                # code...
                                                break;
                                        }
                                    ?>
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="profile-5">
                                    <div class="col-sm-4 col-xs-12">
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi nostrum eaque ducimus aperiam est maxime perspiciatis, sed voluptatem, quidem quibusdam similique quae voluptatibus impedit accusamus illo distinctio perferendis cupiditate amet?</p>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi nostrum eaque ducimus aperiam est maxime perspiciatis, sed voluptatem, quidem quibusdam similique quae voluptatibus impedit accusamus illo distinctio perferendis cupiditate amet?</p>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi nostrum eaque ducimus aperiam est maxime perspiciatis, sed voluptatem, quidem quibusdam similique quae voluptatibus impedit accusamus illo distinctio perferendis cupiditate amet?</p>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi nostrum eaque ducimus aperiam est maxime perspiciatis, sed voluptatem, quidem quibusdam similique quae voluptatibus impedit accusamus illo distinctio perferendis cupiditate amet?</p>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi nostrum eaque ducimus aperiam est maxime perspiciatis, sed voluptatem, quidem quibusdam similique quae voluptatibus impedit accusamus illo distinctio perferendis cupiditate amet?</p>
                                    </div>
                                    <div class="col-sm-4 col-xs-12">
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi nostrum eaque ducimus aperiam est maxime perspiciatis, sed voluptatem, quidem quibusdam similique quae voluptatibus impedit accusamus illo distinctio perferendis cupiditate amet?</p>
                                    </div>
                                </div>
                            </div> <!-- end tab-content -->
                    </div>
                </div>
            </div>
        </section>


        <section class="content-section" id="envase-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 text-center col-center">
                        <h3 class="mb30">¿Qué hago con el envase?</h3>
                        <p style="font-size:17px;">Regresa el envase de tu producto a cualquiera de nuestras tiendas y recibe un descuento aplicable inmediatamente o en tu siguiente compra.</p>
                    </div>
                </div>
            </div>
        </section>

       
        <section class="content-section" id="otros-asesorias">
            <div class="container">
                <div class="row">
                    <div class="col-md-offset-1 col-md-5 col-sm-offset-1 col-sm-5 text-center dd">
                        <h3 class="otros-pad">Otros productos</h3>
                        <!-- <a class="ficha-descarga" target="blank" style="font-size:14px;" href="">Descarga la ficha técnica</a> -->
                        <div class="col-md-6 dd2">
                            <p class="parrafo-otros">
                                <?php
                                    $db->Consultar("SELECT * FROM productos ORDER BY RAND() LIMIT 5;");
                                        $row = $db->ObtenerArray();
                                        $cat = $row['categoria'];
                                        $cod = $row['codigo'];
                                        $nombre = $row['nombre'];
                                        if ($producto_actual == $cod){
                                            print "<a class='active parrafo-otros' href='productos.php?cat=$cat&prod=$cod'>$nombre</a>";
                                        }
                                        else{
                                            print "<a class='parrafo-otros' href='productos.php?cat=$cat&prod=$cod'>$nombre</a>";
                                        }
                                ?>
                            </p>
                        </div>
                        <div class="col-md-6 dd2">
                            <p class="parrafo-otros">
                                <?php
                                    $db->Consultar("SELECT * FROM productos ORDER BY RAND() LIMIT 5;");
                                        $row = $db->ObtenerArray();
                                        $cat = $row['categoria'];
                                        $cod = $row['codigo'];
                                        $nombre = $row['nombre'];
                                        if ($producto_actual == $cod){
                                            print "<a class='active parrafo-otros' href='productos.php?cat=$cat&prod=$cod'>$nombre</a>";
                                        }
                                        else{
                                            print "<a class='parrafo-otros' href='productos.php?cat=$cat&prod=$cod'>$nombre</a>";
                                        }
                                ?>
                            </p>
                        </div>
                        <div class="col-md-6 dd2">
                            <p class="parrafo-otros">
                                <?php
                                    $db->Consultar("SELECT * FROM productos ORDER BY RAND() LIMIT 5;");
                                        $row = $db->ObtenerArray();
                                        $cat = $row['categoria'];
                                        $cod = $row['codigo'];
                                        $nombre = $row['nombre'];
                                        if ($producto_actual == $cod){
                                            print "<a class='active parrafo-otros' href='productos.php?cat=$cat&prod=$cod'>$nombre</a>";
                                        }
                                        else{
                                            print "<a class='parrafo-otros' href='productos.php?cat=$cat&prod=$cod'>$nombre</a>";
                                        }
                                ?>
                            </p>
                        </div>
                        <div class="col-md-6 dd2">
                            <p class="parrafo-otros">
                                <?php
                                    $db->Consultar("SELECT * FROM productos ORDER BY RAND() LIMIT 5;");
                                        $row = $db->ObtenerArray();
                                        $cat = $row['categoria'];
                                        $cod = $row['codigo'];
                                        $nombre = $row['nombre'];
                                        if ($producto_actual == $cod){
                                            print "<a class='active parrafo-otros' href='productos.php?cat=$cat&prod=$cod'>$nombre</a>";
                                        }
                                        else{
                                            print "<a class='parrafo-otros' href='productos.php?cat=$cat&prod=$cod'>$nombre</a>";
                                        }
                                ?>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-1 col-sm-1">
                        <div class="separador2"></div>
                    </div>
                    <div class="col-md-5 col-sm-5 text-center">
                        <h3 class="otros-pad">¿Necesitas asesorías?</h3>
                        <p class="vino-a">Comunícate con nosotros al <a class="vino-a" href="tel:+52 1 (238) 131 6241">(238) 131 6241</a><br> o <a class="vino-a" href="mailto:">escríbenos</a></p>
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
    <script src="scripts/custom.js"></script>
    <script>
         var php_var = "<?php echo $categoria_actual; ?>";
         switch (php_var){
             case 'pinturas':
             $('#collapseOne-11').addClass('in');
             break;
             case 'selladores-adhesivos':
             $('#collapseTwo-11').addClass('in');
             break;
             case 'pastas-acrilicas':
             $('#collapseThree-11').addClass('in');
             break;
             case 'impermeabilizantes':
             $('#collapseFour-11').addClass('in');
             break;
             case 'granitos-planchados':
             $('#collapseFive-11').addClass('in');
             break;
             case 'pegazulejos':
             $('#collapseSix-11').addClass('in');
             break;
             case 'productos-especiales':
             $('#collapseSeven-11').addClass('in');
             break;
         }
    </script>
    
</body>

</html>
