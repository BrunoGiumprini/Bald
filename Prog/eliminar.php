<?php

    require_once "../conex.php";
    if(isset($_POST['eliminar'])) {
        $deporte = $_POST['deportes'];

        mysqli_query($conn, "DELETE FROM deporte WHERE nombre = '$deporte'");

        header('location: ../Diseño Web/html/back.php');
    }


?>