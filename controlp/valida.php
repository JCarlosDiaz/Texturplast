<?php 
require_once "../db/connect.php";
$usuario  = $_POST["usuario"];
$contrasena = $_POST["contrasena"];
session_start();
    if($usuario == 'texturplast' && $contrasena == 'textur.admin2018'){
            
            $_SESSION['entra'] = 'SI';
            echo "<script>location.href='auntentica.php';</script>"; 
            exit();
            // header ("Location: usuarios.php");
    }
    else { 
        //si no existe le mando otra vez a la portada 
        echo "<script>window.location='index.php?error=s';</script>";
        // $_SESSION['entrt'] = 'NO';
        exit();
        // header("Location: index.php?error=s"); 
    } 
?>