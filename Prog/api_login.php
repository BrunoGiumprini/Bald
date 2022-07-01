<?php
session_start();
include("conex.php");

$_SESSION['errorMsg'] = '';

function alert($msg) {
    echo "<script type='text/javascript'>alert('$msg');</script>";
}

if(empty($_POST['nombreusuario']) || empty($_POST['password'])) {
    $_SESSION['errorMsg'] = "Todos los campos son obligatorios!";
    header("Location: ../Diseño Web/html/login.php");
}
else {
    $usuario = $_POST['nombreusuario'];
    $contrasena = md5($_POST['password']);

    $consulta = "SELECT * FROM usuarios WHERE nom_usuario='$usuario' AND contrasena='$contrasena'";
    $result = mysqli_query($conn, $consulta);
    $filas = mysqli_num_rows($result);
    if ($filas) {
        header("Location: ../Diseño Web/index.html");
        session_destroy();
        die();
    } 
    else {
        $_SESSION['errorMsg'] = "El nombre de usuario o la contraseña ingresados no existen en nuestro sistema!";
        header("Location: ../Diseño Web/html/login.php");
    }
}
?>
