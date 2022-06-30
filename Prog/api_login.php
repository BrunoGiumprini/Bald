<?php
include("conex.php");

$usuario=$_POST['nombreusuario'];
$contraseña=$_POST['password'];

$consulta = "SELECT * FROM usuarios WHERE nom_usuario='$usuario' AND contrasena='$contraseña'";
$result = mysqli_query($conn, $consulta);
$filas = mysqli_num_rows($result);

if ($filas) {
    header("Location: ../Diseño Web/index.html");
} 
else {
    echo '<h1 class="bad">ERROR EN LA AUTENTIFICACIÓN</h1>';
}
?>