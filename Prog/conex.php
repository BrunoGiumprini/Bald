<?php 
$servername = "localhost";
$username = "root";
$password = "";
$bd = "registro_prueba";

$conn = new mysqli($servername, $username, $password, $bd);

if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    exit();
}
?>