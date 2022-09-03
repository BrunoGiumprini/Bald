<?php
    include("../conex.php");
    $usuario = $_POST['usuario'];
    $consulta = "SELECT email, premium, metodopago FROM usuarios WHERE nom_usuario = '" . mysqli_real_escape_string($conn, $usuario) . "';";
    $result = mysqli_query($conn, $consulta);
    $row = mysqli_fetch_row($result);
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
    <form method="POST" action="modificar_usuario.php">
        <label for="deportes" class="textop fw-bold">Seleccionar usuario a gestionar</label>
        <div class="input-group mb-3">
            Usuario
            <select name="usuario">
                <option value="<?php echo $usuario ?>" selected><?php echo $usuario ?></option>
            </select><br>

            Correo electrónico
            <select name="email">
                <option value="<?php echo $row[0] ?>" selected><?php echo $row[0] ?></option>
            </select><br>
            
            Membresía
            <select name="membresia">
            <?php 
                if($row[1] == 1) {
                    echo "<option value='activa' selected>Activa</option>";
                    echo "<option value='inactiva'>Inactiva</option>";
                } else {
                    echo "<option value='inactiva' selected>Inactiva</option>";
                    echo "<option value='activa'>Activa</option>";
                }
            ?>
            </select><br>
           
            Método de pago
            <select name="metodopago">
            <?php
                if($row[2] == 'credito') {
                    echo "<option value='credito' selected>Crédito</option>";
                    echo "<option value='debito'>Débito</option>";
                } else {
                    echo "<option value='debito' selected>Débito</option>";
                    echo "<option value='credito'>Crédito</option>";
                }
            ?>
            </select>
            <input type="submit" name="submit" value="Modificar datos">
        </div>
    </form>
</body>
</html>