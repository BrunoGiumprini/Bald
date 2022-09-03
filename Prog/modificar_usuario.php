<?php 
    require_once "../conex.php";

    $usuario = $_POST['usuario'];
    $membresia = ($_POST['membresia'] == 'activa' ? 1 : 0);
    $metodopago = $_POST['metodopago'];

    mysqli_query($conn, "UPDATE usuarios SET premium='$membresia', metodopago='$metodopago' WHERE nom_usuario='$usuario'");
    header('location: ./suscripciones.php');
?>