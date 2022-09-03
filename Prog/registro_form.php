<?php
session_start();

include("conex.php");

$_SESSION['errorMsg'] = '';

if(empty($_POST['nom_usuario']) || empty($_POST['email']) || empty($_POST['fechanacimiento']) || empty($_POST['password'])) {
    $_SESSION['errorMsg'] = "Todos los campos son obligatorios!";
    header("Location: ../Diseño Web/html/registro.php");
}
else {
    $user = mysqli_real_escape_string($conn, $_POST['nom_usuario']);
    $mail = mysqli_real_escape_string($conn, $_POST['email']);
    $date = date($_POST['fechanacimiento']);
    $pssw = mysqli_real_escape_string($conn, $_POST['password']);
    $hash_psw = md5($pssw);
    $sql = "INSERT INTO `usuarios`(`nom_usuario`, `email`, `fnac`, `contrasena`) VALUES ('$user','$mail','$date','$hash_psw')";

    if (mysqli_query($conn, $sql)) {
        header("Location: ../Diseño Web/index.html");
        session_destroy();
        die();
    }
}
?>