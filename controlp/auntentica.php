<?php
session_start();
//Inicio la sesion 
//COMPRUEBA QUE EL USUARIO ESTA AUTENTIFICADO 
if (isset($_SESSION["entra"]) == "SI") { 
    //si no existe, envio a la pagina de autentificacion 
    echo "<script>location.href='usuarios.php';</script>";
    //ademas salgo de este script 
    exit(); 
}else{
    echo "<script>location.href='index.php';</script>";
}
?>