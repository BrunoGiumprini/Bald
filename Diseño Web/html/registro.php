<html lang="es">

<head>


    <meta charset="utf-8">

    <title>Registro de Usuario</title>

    <link rel="stylesheet" href="../css/estiloregistro.css">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">

</head>

<body>

    <form method="post">
        <h3>Registro</h3>

        <label for="nombre"> Nombre </label>
        <input type="text" name="nombre" placeholder="Ingresa tu nombre" maxlength="30">

        <label for="aepllido"> Apellido </label>
        <input type="text" name="apellido" placeholder="Ingresa tu apellido" maxlength="30">

        <label for="email"> Email: </label>
        <input type="text" name="email" maxlength="30" placeholder="Ingresa un email">

        <label for="nacimiento"> Fecha de Nacimiento: </label>
        <input type="date" name="fechanacimiento">

        <label for="password"> Contraseña </label>
        <input type="password" name="password" placeholder="Ingresa una contrseña" maxlength="30">

        <button name="submit">Siguente</button>

    </form>

    <?php
    include('validacion.php');
    ?>

</body>

</html>