<?php
include("../conex.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="POST" action="gestionar.php">
        <div class="modal-body">
            <!--pedir deporte-->
            <!--pedir deporte-->
            <label for="deportes" class="textop fw-bold">Seleccionar usuario a gestionar</label>
            <div class="input-group mb-3">
                <select name="usuario" class="form-select" required>
                    <option value="" disabled selected>Seleccionar usuario</option>
                    <?php
                        $consulta = "SELECT * FROM usuarios";
                        $result = mysqli_query($conn, $consulta);
                        $filas = mysqli_num_rows($result);

                        if($filas) { 
                            while($fila = mysqli_fetch_assoc($result)) {
                                echo '<option value="' . $fila['nom_usuario']. '">' . $fila['nom_usuario']. '</option>';
                            }
                        }
                    ?>
                </select>
                <input type="submit" name="submit" value="Cargar datos">
            </div>
        </div>
    </form>
</body>
</html>