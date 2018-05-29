<?php
$servername = "localhost";
$username = "dappcun_texturplastadmin";
$password = "textur2018";
$dbname = "dappcun_texturplast";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

?>