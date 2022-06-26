<?php
$servername = "localhost";
$username = "root";
$password = "";
$bd = "registro_prueba";

$conn = new mysqli($servername, $username, $password, $bd);

$name = $_POST['nombre'];
$apellido = $_POST['apellido'];
$mail = $_POST['email'];
$date = $_POST['fechanacimiento'];
$pssw = $_POST['password'];


if (isset($_POST['submit'])) {
    if (
        strlen($_POST['nombre']) > 0 &&
        strlen($_POST['apellido']) > 0 &&
        strlen($_POST['email']) > 0 &&
        strlen($_POST['fechanacimiento']) > 0 &&
        strlen($_POST['password']) > 0
    ) {

        $sql = "INSERT INTO `usuarios`(`nombre`, `apellido`, `email`, `fnac`, `contraseña`) VALUES ('$name','$apellido','$mail','$date','$pssw')";

        if (mysqli_query($conn, $sql)) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
}

?>