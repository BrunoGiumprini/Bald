<?php
include("conex.php");

$name = $_POST['nombre'];
$apellido = mysqli_real_escape_string($conn, $_POST['nom_usuario']);
$mail = mysqli_real_escape_string($conn, $_POST['email']);
$date = date($_POST['fechanacimiento']);
$pssw = mysqli_real_escape_string($conn, $_POST['password']);
$hash_psw = md5($pssw);
if (isset($_POST['submit'])) {
    if (
        !empty($name) &&
        !empty($apellido) &&
        !empty($mail) &&
        !empty($date) &&
        !empty($pssw)
    ) {
        $sql = "INSERT INTO `usuarios`(`nombre`, `nom_usuario`, `email`, `fnac`, `contrasena`) VALUES ('$name','$apellido','$mail','$date','$hash_psw')";

        if (mysqli_query($conn, $sql)) {
            echo "Registrado exitosamente!";
            header("Location: ../Diseño Web/index.html");
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    } else echo 'error';
}

?>