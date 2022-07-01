<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset = "utf-8">
    <title>Registro de Usuario</title>
    <link rel = "stylesheet" href = "../css/estiloregistro.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
</head>

<body>
    <form action="../../Prog/registro_form.php" method="post">
        <h3>Registro</h3>
        <div class="line"></div>
        <section class="error">
            <?php 
                session_start();
                if(isset($_SESSION['errorMsg'])) {
                    echo '<p>' . $_SESSION['errorMsg'] . '</p>';
                    unset($_SESSION['errorMsg']);
                }
            ?>
        </section>
        
        <label id="apellido"> Nombre de usuario: </label>
        <input type="text" name="nom_usuario" placeholder="Ingrese su nombre de usuario" maxlength="30">

        <label id="email"> Correo electrónico: </label>
        <input type="text" name="email" maxlength="30" placeholder="Ingrese su correo electrónico"> 

        <label id="nacimiento"> Fecha de nacimiento: </label>
        <input type="date" class="datepicker" name="fechanacimiento"> 

        <label id="password"> Contraseña </label>
        <input type="password" name="password" placeholder="Ingrese su contraseña" maxlength="30">

        <input type="submit" class="submit" value="Registrarse" />

        <section class="has-account">
            <p>¿Ya estás registrado? <a href="login.php">Iniciar sesión</a>.</p>
        </section>

    </form>
</body>
</html>