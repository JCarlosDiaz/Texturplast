<?php
include '../db/connect.php';
header("Content-type: application/vnd.ms-csv; name='csv'");
header("Content-Disposition: filename=ficheroExcel.csv");
header("Pragma: no-cache");
header("Expires: 0");

echo $_POST['datos_a_enviar'];
?>