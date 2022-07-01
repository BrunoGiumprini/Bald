<!DOCTYPE html>
<html lang="es">
<head>   
    <meta charset = "utf-8">
    <title>Inicio de Sesion</title>
    <link rel = "stylesheet" href = "../css/login.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
</head>
<body>

    <form action="../../Prog/api_login.php" method="post">
        <h3>Inicio de Sesion</h3>

        <label id = "email"> Nombre de usuario: </label>
        <input type = "text" name = "nombreusuario" maxlength = "30" placeholder = "Ingresa nombre de usuario" > 

        <label id="password"> Contraseña: </label>
        <input type="password" name="password" placeholder = "Ingresa contrseña" maxlength = "30">

        <input type="submit"/>

    
    
    </form>

</body>
</html>