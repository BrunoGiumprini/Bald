<?php
include("conex.php");

$usuario=$_POST['nombreusuario'];
$contrasena=$_POST['password'];
$hash_contrasena = md5($contrasena);

$consulta = "SELECT * FROM usuarios WHERE nom_usuario='$usuario' AND contrasena='$hash_contrasena'";
$result = mysqli_query($conn, $consulta);
$filas = mysqli_num_rows($result);

function alert($msg) {
    echo "<script type='text/javascript'>alert('$msg');</script>";
}

if ($filas) {
    header("Location: ../Diseño Web/index.html");
} 
else {
    alert("La contraseña o el nombre de usuario ingresados parecen ser incorrectos");
    header("Location: ../Diseño Web/html/login.php");

}
