<?php
require_once "conex.php";

if (isset($_POST['modificar'])) {

    if (!empty($_POST['deportes'])) {
        $deporte = $_POST['deportes'];

        if (isset($_POST['nombre'])) {
            $nombre = $_POST['nombre'];
            mysqli_query($conn, "UPDATE deporte SET nombre='$nombre' WHERE nombre='$deporte'");
        }

        if (isset($_FILES["nuevaimgDep"])) {
            $img = $_FILES["nuevaimgDep"];
            $tmp_name = $img["tmp_name"];
            $directorio_guardar = "../Diseño Web/img/banner/";
            $img_archivo = $img["name"];
            $img_tipo = $img["type"];

            if (((strpos($img_tipo, "jpg") || strpos($img_tipo, "jpeg") || strpos($img_tipo, "webp") || strpos($img_tipo, "png")))) {

                $destino = $img_archivo;
                mysqli_query($conn, "UPDATE deporte SET img='$destino' WHERE nombre='$deporte'");

                if (move_uploaded_file($tmp_name, $directorio_guardar . $img_archivo)) {
                    header('location: ../Diseño Web/html/back.php');
                }
            }
        }

        header('location: ../Diseño Web/html/back.php');

        
    }
}
