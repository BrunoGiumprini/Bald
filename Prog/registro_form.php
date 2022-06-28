<?php
include("conex.php");

$name = $_POST['nombre'];
$apellido = mysqli_real_escape_string($conn, $_POST['apellido']);
$mail = mysqli_real_escape_string($conn, $_POST['email']);
$date = date($_POST['fechanacimiento']);
$pssw = mysqli_real_escape_string($conn, $_POST['password']);

if (isset($_POST['submit'])) {
    if (
        !empty($name) &&
        !empty($apellido) &&
        !empty($mail) &&
        !empty($date) &&
        !empty($pssw)
    ) {
        $sql = "INSERT INTO `usuarios`(`nombre`, `apellido`, `email`, `fnac`, `contraseña`) VALUES ('$name','$apellido','$mail','$date','$pssw')";

        if (mysqli_query($conn, $sql)) {
            echo "Registrado exitosamente!";
            header("Location: ../index.html");
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    } else echo 'error';
}

?>