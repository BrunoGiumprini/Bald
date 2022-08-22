<!DOCTYPE html>
<html lang="es">
<head>   
    <meta charset = "utf-8">
    <title>Inicio de Sesion</title>
    <link rel = "stylesheet" href = "../css/login.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="../img/logo.ico">
</head>
<body>

    <form action="../../Prog/api_login.php" method="post">
        <h3>Iniciar sesión</h3>
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

        <label id = "email"> Nombre de usuario: </label>
        <input type = "text" name = "nombreusuario" maxlength = "30" placeholder = "Ingresa tu usuario"> 

        <label id="password"> Contraseña: </label>
        <input type="password" name="password" placeholder = "Ingresa tu contraseña" maxlength = "30">

        <input type="submit" class="submit" value="Ingresar" />

        <section class="no-account">
            <p>¿No tienes cuenta? <a href="registro.php">Regístrate</a> ahora mismo.</p>
        </section>
    
    </form>

</body>
</html>