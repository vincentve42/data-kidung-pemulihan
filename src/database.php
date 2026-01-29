<?php 

$host = "localhost";
$username = "root";
$password = "";
$database = "kidung_pemulihan";
$database_baru = "kidung_modified";

$conn = new mysqli($host, $username, $password,$database);
$connz = new mysqli($host, $username, $password,$database_baru);
?>