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
        <label id="nombre"> Nombre </label>
        <input type="text" name="nombre" placeholder="Ingrese nombre" maxlength="30">
        
        <label id="apellido"> Apellido: </label>
        <input type="text" name="nom_usuario" placeholder="Ingresa nombre de usuario" maxlength="30">

        <label id="email"> Email: </label>
        <input type="text" name="email" maxlength="30" placeholder="Ingrese email"> 

        <label id="nacimiento"> Fecha de Nacimiento: </label>
        <input type="date" name="fechanacimiento"> 

        <label id="password"> Contraseña </label>
        <input type="password" name="password" placeholder="Ingrese contraseña" maxlength="30">

        <input type = "submit" name = "submit"/>

        <a href = "login.php" class = "login"> Iniciar Sesión </a>

    </form>
</body>
</html>