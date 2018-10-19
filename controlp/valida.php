<?php 
include ("../db/connect.php");
$usuario  = $_POST["usuario"];
$contrasena = $_POST["contrasena"];
    if($usuario == 'prueba'){
        if($contrasena == 'prueba'){
            session_start();
            $_SESSION['autenticacion'] = 'SI';
            echo "<script>window.location='usuarios.php';</script>"; 
            // header ("Location: usuarios.php");
        }
    }
    else { 
        //si no existe le mando otra vez a la portada 
        echo "<script>window.location='index.php?error=s';</script>";
        // header("Location: index.php?error=s"); 
    } 
?>