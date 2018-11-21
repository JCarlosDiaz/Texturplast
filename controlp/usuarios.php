<?php
include '../db/connect.php';
// include 'valida.php';
session_start();
if( isset($_SESSION['entra']) != 'SI'){
    echo "<script>window.location='index.php';</script>"; 
    
}else{
?>
<!DOCTYPE html>
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
    <link rel="stylesheet" href="../vendor/hamburgers/hamburgers.min.css">
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
<body class="header-shadows">

    <!-- ========== HEADER ========== -->
    <div class="header">
        <div class="container-fluid">
            <nav class="menu">
                <div class="logo">
                    <a href="#"><img src="../images/texturplast/logo-black.png" alt="Texturplast" class="logo-img"></a>
                </div> <!-- end logo -->
                <div class="menuham-container">
                    <a href="salir.php" class="salir">Cerrar Sesión</a>
                    <!-- <span class="etiqueta">Menú</span> -->
                    <!-- <button class="hamburger hamburger--collapse" type="button">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button> -->
                </div>
            </nav>
        </div>
    </div>
    <!-- ========== MAIN ========== -->
    <div class="main">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 download">
                        <form class="download2" action="" method="post" id=""> 
                            <button type="submit" class="st-btn primary-btn hvr-back hvr-sweep-to-right pull-right botonExcel" onclick="exportTableToCSV('Clientes.csv')">Descargar Base de Datos</button>
                        </form>
                    </div>
                </div>
            </div> 
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <table class="table table-hover" id="Exportar_a_Excel">
                            <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>Correo</th>
                                    <th>Telefono</th>
                                    <th>Estado</th>
                                    <th>Codigo Postal</th>
                                </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <?php 
                                    $db->Consultar("SELECT * FROM clientes");
                                    while($row = $db->ObtenerArray()){
                                    $nombre = $row['nombre'];
                                    $apellido = $row['apellido'];
                                    $correo = $row['correo'];
                                    $estado = $row['estado'];
                                    $telefono = $row['telefono'];
                                    $cp = $row['cp'];
                                    
                                    print "<td>$nombre</td>";
                                    print "<td>$apellido</td>";
                                    print "<td>$correo</td>";
                                    print "<td>$telefono</td>";
                                    print "<td>$estado</td>";
                                    print "<td>$cp</td></tr>";
                                    
                                }
                                ?>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>   
            

                          
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
    <script src="../scripts/init-slider.js"></script>
    <script src="../vendor/sweetalert2/dist/sweetalert2.min.js"></script>
    <script src="../vendor/jquery-form/jquery.form.js" ></script>
    <script src="../scripts/custom.js"></script>
    <script src="../scripts/plugins.js"></script>

	<script src="scripts/main.js"></script>
    <script language="javascript">
$(document).ready(function() {
	$(".botonExcel").click(function(event) {
		$("#datos_a_enviar").val( $("<div>").append( $("#Exportar_a_Excel").eq(0).clone()).html());
		$("#FormularioExportacion").submit();
});
});
</script>
<script>
    function downloadCSV(csv, filename) {
        var csvFile;
        var downloadLink;

        // CSV file
        csvFile = new Blob([csv], {type: "text/csv"});

        // Download link
        downloadLink = document.createElement("a");

        // File name
        downloadLink.download = filename;

        // Create a link to the file
        downloadLink.href = window.URL.createObjectURL(csvFile);

        // Hide download link
        downloadLink.style.display = "none";

        // Add the link to DOM
        document.body.appendChild(downloadLink);

        // Click download link
        downloadLink.click();
    }
</script>
<script>
    function exportTableToCSV(filename) {
        var csv = [];
        var rows = document.querySelectorAll("table tr");
        for (var i = 0; i < rows.length; i++) {
            var row = [], cols = rows[i].querySelectorAll("td, th");

            for (var j = 0; j < cols.length; j++) 
            row.push(cols[j].innerText);
            csv.push(row.join(","));        
        }
    // Download CSV file
    downloadCSV(csv.join("\n"), filename);
    }
</script>
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
   
    
