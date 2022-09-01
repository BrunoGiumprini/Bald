<?php
require_once "conex.php";

    if(isset($_POST["enviar_deporte"])){
        
        if(!empty($_FILES["iDeporte"])){
            $nombre = $_POST["nomDeporte"];
            $img = $_FILES["iDeporte"];
            $tmp_name = $img["tmp_name"];
            $directorio_guardar = "../Diseño Web/img/banner/";
            $img_archivo = $img["name"];
            $img_tipo = $img["type"]; 

        if(((strpos($img_tipo, "jpg") || strpos($img_tipo, "jpeg") || strpos($img_tipo, "webp") || strpos($img_tipo, "png")))){

            if(isset($nombre)){

                $destino = $img_archivo;
                mysqli_query($conn, "INSERT INTO `deporte`(`nombre`, `img`) VALUES ('" . $nombre . "','" . $destino . "')");

                if(move_uploaded_file($tmp_name, $directorio_guardar . $img_archivo)){
                    header('location: ../Diseño Web/html/back.php');
                }
            }
        }
        }

        
    }
?>
