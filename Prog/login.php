<?php
include("conex.php");

$usuario=$_POST['nombre'];
$contraseña=$_POST['contraseña'];

$consulta = "SELECT * FROM usuarios WHERE nombre='$nombre' and contraseña='$contraseña'";
$result = mysqli_query($conn, $consulta);

$filas=mysqli_num_rows($result);

if ($filas) {
    header("Location: ../index.html");
}else{
?>
    <h1 class="bad">ERROR EN LA AUTENTIFICACIÓN</h1>
    <?php
}
?>