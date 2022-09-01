<?php
require_once "../../Prog/conex.php";
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">

    <!--comportamiento responsive-->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="../css/styles.css">


    <!--BOOTSTRAP-->

    <!--iconos-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

    <!--CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>

    <!--Google fonts-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="img/logo.ico">

    <title>Backoffice</title>
    <link rel="icon" href="../img/logo.png">
</head>

<body style="background-color: #000000;">

    <!--botones para el modal-->
    <!--LIGA-->
    <br><br>

    <br>
    <h1 class="text-center titulo">BACKOFFICE</h1> <br><br>

    <!--modal para backoffice-->

    <!--DIVISIÓN-PAIS-->
    <!--modal numero 1-->
    <div class="modal fade" id="exampleModalToggle" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel">selecciona una acción</h5>
                    <!--boton de cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--botones con acciones-->
                <div class="modal-body">
                    <div class="d-grid gap-2">
                        <button class="btn btn-dark d-grid gap-2" data-bs-target="#exampleModalToggle2" data-bs-toggle="modal">Agregar</button><br>
                        <button class="btn btn-dark d-grid gap-2" data-bs-target="#exampleModalToggle3" data-bs-toggle="modal">Modificar</button><br>
                        <button class="btn btn-dark d-grid gap-2" data-bs-target="#exampleModalToggle4" data-bs-toggle="modal">Eliminar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--modal numero 2 agregar-->
    <div class="modal fade" id="exampleModalToggle2" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel2">Agregar</h5>
                    <!--boton cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--form del modal 2-->
                <div class="modal-body">
                    <form method="post">
                        <!--pedir deporte-->
                        <label for="selectDeporte" class="textop fw-bold">seleccionar deporte</label>
                        <div class="input-group mb-3">
                            <select class="form-select" id="inputGroupSelect01" name="selectDeporte">
                                <option selected>Seleccionar...</option>
                                <option value="1">Basketball</option>
                                <option value="2">Boxeo</option>
                                <option value="3">Football</option>
                                <option value="4">Handball</option>
                                <option value="5">Hockey</option>
                                <option value="6">Tennis</option>
                                <option value="7">Rugby</option>
                                <option value="8">Natación</option>
                                <option value="9">Volleyball</option>
                                <option value="10">Fórmula 1</option>
                            </select>
                        </div>
                    </form>

                    <!--pedir bandera-->
                    <p class="textop fw-bold">subir imagen de bandera</p>
                    <div class="input-group">
                        <input type="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                        <button class="btn btn-dark" type="button" id="inputGroupFileAddon04">Subir</button>
                    </div>

                    <!--pedir nombre de liga-->
                    <br>
                    <p class="textop fw-bold">ingresar pais o división</p>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>

                </div>
                <!--cierra modal-->

                <!--pie de pag regresar-->
                <div class="modal-footer">
                    <button class="btn btn-outline-dark" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Regresar</button>
                    <button type="submit" class="btn btn-dark">Agregar</button>
                </div>
            </div>
        </div>
    </div>
    <!--modal numero 3 modificar-->
    <div class="modal fade" id="exampleModalToggle3" aria-hidden="true" aria-labelledby="exampleModalToggleLabel3" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel3">Modificar</h5>
                    <!--boton cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--form del modal 3-->
                <div class="modal-body">
                    <!--pedir deporte-->
                    <p class="textop fw-bold">seleccionar deporte</p>
                    <div class="input-group mb-3">
                        <select class="form-select" id="inputGroupSelect01">
                            <option selected>Seleccionar...</option>
                            <option value="1">Basketball</option>
                            <option value="2">Boxeo</option>
                            <option value="3">Football</option>
                            <option value="4">Handball</option>
                            <option value="5">Hockey</option>
                            <option value="6">Tennis</option>
                            <option value="7">Rugby</option>
                            <option value="8">Natación</option>
                            <option value="9">Volleyball</option>
                            <option value="10">Fórmula 1</option>
                        </select>
                    </div>

                    <!--seleccionamos division que debe estar en la base de datos (agregar todas)-->
                    <p class="textop fw-bold">seleccionar división/pais</p>
                    <div class="input-group mb-3">
                        <select class="form-select" id="inputGroupSelect01">
                            <option selected>Seleccionar...</option>
                            <option value="1">Africa</option>
                            <option value="2">Australia</option>
                            <option value="3">Austria</option>
                            <option value="4">Alemania</option>
                            <option value="5">America</option>
                            <option value="6">Asia</option>
                            <option value="7">Arabia Saudita</option>
                            <option value="8">Afganistan</option>
                            <option value="9">Belgica</option>
                            <option value="10">Bulgaria</option>
                        </select>
                    </div>

                    <!--damos opción de cambiar la bandera, si no quiere queda la que ya estaba en la bd-->
                    <p class="textop fw-bold">modificar bandera</p>
                    <div class="input-group">
                        <input type="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                        <button class="btn btn-dark" type="button" id="inputGroupFileAddon04">Subir</button>
                    </div>

                    <!--modificar nombre de la división, debe aparecer que figura en la bd-->
                    <br>
                    <p class="textop fw-bold">modificar nombre de pais o división</p>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>

                </div>
                <!--pie de pag regresar-->
                <div class="modal-footer">
                    <button class="btn btn-outline-dark" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Regresar</button>
                    <button type="submit" class="btn btn-dark">Modificar</button>
                </div>
            </div>
        </div>
    </div>
    <!--modal numero 4 eliminar-->
    <div class="modal fade" id="exampleModalToggle4" aria-hidden="true" aria-labelledby="exampleModalToggleLabel4" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel4">Eliminar</h5>
                    <!--boton cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--form del modal 4-->
                <div class="modal-body">
                    <!--pedir deporte-->
                    <p class="textop fw-bold">seleccionar deporte</p>
                    <div class="input-group mb-3">
                        <select class="form-select" id="inputGroupSelect01">
                            <option selected>Seleccionar...</option>
                            <option value="1">Basketball</option>
                            <option value="2">Boxeo</option>
                            <option value="3">Football</option>
                            <option value="4">Handball</option>
                            <option value="5">Hockey</option>
                            <option value="6">Tennis</option>
                            <option value="7">Rugby</option>
                            <option value="8">Natación</option>
                            <option value="9">Volleyball</option>
                            <option value="10">Fórmula 1</option>
                        </select>
                    </div>

                    <!--seleccionamos division que debe estar en la base de datos (agregar todas)-->
                    <p class="textop fw-bold">seleccionar división/pais a eliminar</p>
                    <div class="input-group mb-3">
                        <select class="form-select" id="inputGroupSelect01">
                            <option selected>Seleccionar...</option>
                            <option value="1">Africa</option>
                            <option value="2">Australia</option>
                            <option value="3">Austria</option>
                            <option value="4">Alemania</option>
                            <option value="5">America</option>
                            <option value="6">Asia</option>
                            <option value="7">Arabia Saudita</option>
                            <option value="8">Afganistan</option>
                            <option value="9">Belgica</option>
                            <option value="10">Bulgaria</option>
                        </select>
                    </div>
                </div>
                <!--pie de pag regresar-->
                <div class="modal-footer">
                    <button class="btn btn-outline-dark" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Regresar</button>
                    <button type="submit" class="btn btn-dark">Eliminar</button>

                </div>
            </div>
        </div>
    </div>
    <!--boton de división-->
    <div class="d-grid gap-2 col-6 mx-auto">
        <a class="btn btn-outline-light" data-bs-toggle="modal" href="#exampleModalToggle" role="button">División /
            País</a>
    </div>


    <!------------------------------------------------------------------------------------------------->
    <br><br>

    <!--LIGA-->
    <!--modal numero-->
    <div class="modal fade" id="exampleModalToggle5" aria-hidden="true" aria-labelledby="exampleModalToggleLabel5" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel5">selecciona una acción</h5>
                    <!--boton de cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--botones con acciones-->
                <div class="modal-body">
                    <div class="d-grid gap-2">
                        <button class="btn btn-dark d-grid gap-2" data-bs-target="#exampleModalToggle6" data-bs-toggle="modal">Agregar</button><br>
                        <button class="btn btn-dark d-grid gap-2" data-bs-target="#exampleModalToggle7" data-bs-toggle="modal">Modificar</button><br>
                        <button class="btn btn-dark d-grid gap-2" data-bs-target="#exampleModalToggle8" data-bs-toggle="modal">Eliminar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--modal numero 6 agregar-->
    <div class="modal fade" id="exampleModalToggle6" aria-hidden="true" aria-labelledby="exampleModalToggleLabel6" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel6">Agregar</h5>
                    <!--boton cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--form del modal 2-->
                <div class="modal-body">

                    <!--pedir deporte-->
                    <p class="textop fw-bold">seleccionar deporte</p>
                    <div class="input-group mb-3">
                        <select class="form-select" id="inputGroupSelect01">
                            <option selected>Seleccionar...</option>
                            <option value="1">Basketball</option>
                            <option value="2">Boxeo</option>
                            <option value="3">Football</option>
                            <option value="4">Handball</option>
                            <option value="5">Hockey</option>
                            <option value="6">Tennis</option>
                            <option value="7">Rugby</option>
                            <option value="8">Natación</option>
                            <option value="9">Volleyball</option>
                            <option value="10">Fórmula 1</option>
                        </select>
                    </div>

                    <!--seleccionamos division que debe estar en la base de datos (agregar todas)-->
                    <p class="textop fw-bold">seleccionar país o división</p>
                    <div class="input-group mb-3">
                        <select class="form-select" id="inputGroupSelect01">
                            <option selected>Seleccionar...</option>
                            <option value="1">Africa</option>
                            <option value="2">Australia</option>
                            <option value="3">Austria</option>
                            <option value="4">Alemania</option>
                            <option value="5">America</option>
                            <option value="6">Asia</option>
                            <option value="7">Arabia Saudita</option>
                            <option value="8">Afganistan</option>
                            <option value="9">Belgica</option>
                            <option value="10">Bulgaria</option>
                        </select>
                    </div>

                    <!--pedir nombre de liga-->
                    <br>
                    <p class="textop fw-bold">ingresar nombre de la liga</p>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>

                </div>
                <!--cierra modal-->

                <!--pie de pag regresar-->
                <div class="modal-footer">
                    <button class="btn btn-outline-dark" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Regresar</button>
                    <button type="submit" class="btn btn-dark">Agregar</button>
                </div>
            </div>
        </div>
    </div>
    <!--modal numero 7 modificar-->
    <div class="modal fade" id="exampleModalToggle7" aria-hidden="true" aria-labelledby="exampleModalToggleLabel7" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel7">Modificar</h5>
                    <!--boton cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--form del modal 3-->
                <div class="modal-body">
                    <!--pedir deporte-->
                    <p class="textop fw-bold">seleccionar deporte</p>
                    <div class="input-group mb-3">
                        <select class="form-select" id="inputGroupSelect01">
                            <option selected>Seleccionar...</option>
                            <option value="1">Basketball</option>
                            <option value="2">Boxeo</option>
                            <option value="3">Football</option>
                            <option value="4">Handball</option>
                            <option value="5">Hockey</option>
                            <option value="6">Tennis</option>
                            <option value="7">Rugby</option>
                            <option value="8">Natación</option>
                            <option value="9">Volleyball</option>
                            <option value="10">Fórmula 1</option>
                        </select>
                    </div>

                    <!--seleccionamos division que debe estar en la base de datos (agregar todas)-->
                    <p class="textop fw-bold">seleccionar división/pais</p>
                    <div class="input-group mb-3">
                        <select class="form-select" id="inputGroupSelect01">
                            <option selected>Seleccionar...</option>
                            <option value="1">Africa</option>
                            <option value="2">Australia</option>
                            <option value="3">Austria</option>
                            <option value="4">Alemania</option>
                            <option value="5">America</option>
                            <option value="6">Asia</option>
                            <option value="7">Arabia Saudita</option>
                            <option value="8">Afganistan</option>
                            <option value="9">Belgica</option>
                            <option value="10">Bulgaria</option>
                        </select>
                    </div>

                    <!--seleccionamos la liga (deben aparecer las mismas que figuran en el deporte y división previamente deleccionados por el usuario)-->
                    <p class="textop fw-bold">seleccionar liga a modificar</p>
                    <div class="input-group mb-3">
                        <select class="form-select" id="inputGroupSelect01">
                            <option selected>Seleccionar...</option>
                            <option value="1">liga</option>
                            <option value="2">liga</option>
                            <option value="3">liga</option>
                            <option value="4">liga</option>
                            <option value="5">liga</option>
                            <option value="6">liga</option>
                            <option value="7">liga</option>
                            <option value="8">liga</option>
                            <option value="9">liga</option>
                            <option value="10">liga</option>
                        </select>
                    </div>


                    <!--modificar nombre de la liga, debe aparecer que figura en la bd-->
                    <br>
                    <p class="textop fw-bold">modificar nombre de la liga</p>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                    </div>

                </div>
                <!--pie de pag regresar-->
                <div class="modal-footer">
                    <button class="btn btn-outline-dark" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Regresar</button>
                    <button type="submit" class="btn btn-dark">Modificar</button>
                </div>
            </div>
        </div>
    </div>
    <!--modal numero 8 eliminar-->
    <div class="modal fade" id="exampleModalToggle8" aria-hidden="true" aria-labelledby="exampleModalToggleLabel8" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel8">Eliminar</h5>
                    <!--boton cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--form del modal 4-->
                <div class="modal-body">
                    <!--pedir deporte-->
                    <!--pedir deporte-->
                    <p class="textop fw-bold">seleccionar deporte</p>
                    <div class="input-group mb-3">
                        <select class="form-select" id="inputGroupSelect01">
                            <option selected>Seleccionar...</option>
                            <option value="1">Basketball</option>
                            <option value="2">Boxeo</option>
                            <option value="3">Football</option>
                            <option value="4">Handball</option>
                            <option value="5">Hockey</option>
                            <option value="6">Tennis</option>
                            <option value="7">Rugby</option>
                            <option value="8">Natación</option>
                            <option value="9">Volleyball</option>
                            <option value="10">Fórmula 1</option>
                        </select>
                    </div>

                    <!--seleccionamos division que debe estar en la base de datos (agregar todas)-->
                    <p class="textop fw-bold">seleccionar división/pais</p>
                    <div class="input-group mb-3">
                        <select class="form-select" id="inputGroupSelect01">
                            <option selected>Seleccionar...</option>
                            <option value="1">Africa</option>
                            <option value="2">Australia</option>
                            <option value="3">Austria</option>
                            <option value="4">Alemania</option>
                            <option value="5">America</option>
                            <option value="6">Asia</option>
                            <option value="7">Arabia Saudita</option>
                            <option value="8">Afganistan</option>
                            <option value="9">Belgica</option>
                            <option value="10">Bulgaria</option>
                        </select>
                    </div>

                    <!--seleccionamos la liga (deben aparecer las mismas que figuran en el deporte y división previamente deleccionados por el usuario)-->
                    <p class="textop fw-bold">seleccionar liga a eliminar</p>
                    <div class="input-group mb-3">
                        <select class="form-select" id="inputGroupSelect01">
                            <option selected>Seleccionar...</option>
                            <option value="1">liga</option>
                            <option value="2">liga</option>
                            <option value="3">liga</option>
                            <option value="4">liga</option>
                            <option value="5">liga</option>
                            <option value="6">liga</option>
                            <option value="7">liga</option>
                            <option value="8">liga</option>
                            <option value="9">liga</option>
                            <option value="10">liga</option>
                        </select>
                    </div>
                </div>
                <!--pie de pag regresar-->
                <div class="modal-footer">
                    <button class="btn btn-outline-dark" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Regresar</button>
                    <button type="submit" class="btn btn-dark">Eliminar</button>

                </div>
            </div>
        </div>
    </div>
    <!--boton de división-->
    <div class="d-grid gap-2 col-6 mx-auto">
        <a class="btn btn-outline-light" data-bs-toggle="modal" href="#exampleModalToggle5" role="button">Liga</a>
    </div>


    <!------------------------------------------------------------------------------------------------->
    <br><br>

    <!--DEPORTE-->
    <!--modal numero-->
    <div class="modal fade" id="exampleModalToggle9" aria-hidden="true" aria-labelledby="exampleModalToggleLabel9" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel9">selecciona una acción</h5>
                    <!--boton de cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--botones con acciones-->
                <div class="modal-body">
                    <div class="d-grid gap-2">
                        <button class="btn btn-dark d-grid gap-2" data-bs-target="#exampleModalToggle10" data-bs-toggle="modal">Agregar</button><br>
                        <button class="btn btn-dark d-grid gap-2" data-bs-target="#exampleModalToggle11" data-bs-toggle="modal">Modificar</button><br>
                        <button class="btn btn-dark d-grid gap-2" data-bs-target="#exampleModalToggle12" data-bs-toggle="modal">Eliminar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--modal numero 10 agregar-->
    <div class="modal fade" id="exampleModalToggle10" aria-hidden="true" aria-labelledby="exampleModalToggleLabel10" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel10">Agregar</h5>
                    <!--boton cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--form del modal 2-->
                <div class="modal-body">

                    <!--pedir nombre del deporte-->
                    <form method="POST" action="../../Prog/agregar_deporte.php" enctype="multipart/form-data">
                        <label for="nomDeporte" class="textop fw-bold">Ingresar nombre del deporte</label>
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" name="nomDeporte" required>
                        </div>

                        <!--pedir imagen del deporte-->
                        <label for="imgDeporte" class="textop fw-bold">Subir imagen del deporte</label>
                        <div class="input-group">
                            <input type="file" name="iDeporte" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload" required>
                        </div>
                </div>


                <!--cierra modal-->

                <!--pie de pag regresar-->
                <div class="modal-footer">
                    <button class="btn btn-outline-dark" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Regresar</button>
                    <input class="btn btn-dark" type="submit" id="inputGroupFileAddon04" name="enviar_deporte" value="subir">
                </div>
                </form>
            </div>
        </div>
    </div>
    <!--modal numero 11 modificar-->
    <div class="modal fade" id="exampleModalToggle11" aria-hidden="true" aria-labelledby="exampleModalToggleLabel11" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel11">Modificar</h5>
                    <!--boton cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--form del modal 3-->
                <form method="POST" action="../../Prog/modificar_deporte.php" enctype="multipart/form-data">
                    <div class="modal-body">
                        <!--pedir deporte, deben ser deportes que aparezcan dentro de a bd-->

                        <label for="deportes" class="textop fw-bold">Seleccionar deporte</label>
                        <div class="input-group mb-3">
                            <select name="deportes" class="form-select" id="inputGroupSelect01" required>
                                <option selected>Seleccionar...</option>
                                <?php
                                $consulta_deportes = mysqli_query($conn, "SELECT nombre from deporte");
                                while ($x = mysqli_fetch_array($consulta_deportes)) {
                                    echo '<option value="' . $x['nombre'] . '">' . $x['nombre'] . '</option>';
                                }
                                ?>
                            </select>
                        </div>
                        <!--modificar nombre del deporte-->

                        <label for="nombre" class="textop fw-bold">Modificar nombre del deporte</label>
                        <div class="input-group mb-3">
                            <input type="text" name="nombre" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                        </div>

                        <!--modificar imagen del deporte-->
                        <label for="modImagenDep" class="textop fw-bold">Subir imagen del deporte</label>

                        <div class="input-group">
                            <input type="file" name="nuevaimgDep" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-outline-dark" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Regresar</button>
                        <input type="submit" name="modificar" class="btn btn-dark" value="Modificar">
                    </div>

                </form>

                <!--pie de pag regresar-->


            </div>
        </div>
    </div>

    <!--modal numero 12 eliminar-->
    <div class="modal fade" id="exampleModalToggle12" aria-hidden="true" aria-labelledby="exampleModalToggleLabel12" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel12">Eliminar</h5>
                    <!--boton cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--form del modal 4-->
                <form method="POST" action="../../Prog/eliminar_deporte.php">
                    <div class="modal-body">
                        <!--pedir deporte-->
                        <!--pedir deporte-->
                        <label for="deportes" class="textop fw-bold">Seleccionar deporte</label>
                        <div class="input-group mb-3">
                            <select name="deportes" class="form-select" id="inputGroupSelect01" required>
                                <option selected>Seleccionar...</option>
                                <?php
                                $consulta_deportes = mysqli_query($conn, "SELECT nombre from deporte");
                                while ($x = mysqli_fetch_array($consulta_deportes)) {
                                    echo '<option value="' . $x['nombre'] . '">' . $x['nombre'] . '</option>';
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                
                <!--pie de pag regresar-->
                <div class="modal-footer">
                    <button class="btn btn-outline-dark" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Regresar</button>
                    <input type="submit" name="eliminar" class="btn btn-dark" value="eliminar">

                </div>
                </form>
            </div>
        </div>
    </div>
    <!--boton de división-->
    <div class="d-grid gap-2 col-6 mx-auto">
        <a class="btn btn-outline-light" data-bs-toggle="modal" href="#exampleModalToggle9" role="button">Deporte</a>
    </div>

    <!------------------------------------------------------------------------------------------------->
    <br><br>

    <!--EQUIPO-->
    <!--modal numero13-->
    <div class="modal fade" id="exampleModalToggle13" aria-hidden="true" aria-labelledby="exampleModalToggleLabel13" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel13">selecciona una acción</h5>
                    <!--boton de cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--botones con acciones-->
                <div class="modal-body">
                    <div class="d-grid gap-2">
                        <button class="btn btn-dark d-grid gap-2" data-bs-target="#exampleModalToggle14" data-bs-toggle="modal">Agregar</button><br>
                        <button class="btn btn-dark d-grid gap-2" data-bs-target="#exampleModalToggle15" data-bs-toggle="modal">Modificar</button><br>
                        <button class="btn btn-dark d-grid gap-2" data-bs-target="#exampleModalToggle16" data-bs-toggle="modal">Eliminar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--modal numero 14 agregar-->
    <div class="modal fade" id="exampleModalToggle14" aria-hidden="true" aria-labelledby="exampleModalToggleLabel14" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel14">Agregar</h5>
                    <!--boton cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--form del modal 2-->
                <div class="modal-body">


                </div>
                <!--cierra modal-->

                <!--pie de pag regresar-->
                <div class="modal-footer">
                    <button class="btn btn-outline-dark" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Regresar</button>
                    <button type="submit" class="btn btn-dark">Agregar</button>
                </div>
            </div>
        </div>
    </div>
    <!--modal numero 15 modificar-->
    <div class="modal fade" id="exampleModalToggle15" aria-hidden="true" aria-labelledby="exampleModalToggleLabel15" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel15">Modificar</h5>
                    <!--boton cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--form del modal 3-->
                <div class="modal-body">
                </div>

                <!--pie de pag regresar-->
                <div class="modal-footer">
                    <button class="btn btn-outline-dark" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Regresar</button>
                    <button type="submit" class="btn btn-dark">Modificar</button>
                </div>
            </div>
        </div>
    </div>

    

    <!--modal numero 16 eliminar-->
    <div class="modal fade" id="exampleModalToggle16" aria-hidden="true" aria-labelledby="exampleModalToggleLabel16" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel16">Eliminar</h5>
                    <!--boton cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--form del modal 4-->
                <div class="modal-body">
                </div>
                <!--pie de pag regresar-->
                <div class="modal-footer">
                    <button class="btn btn-outline-dark" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Regresar</button>
                    <button type="submit" class="btn btn-dark">Eliminar</button>

                </div>
            </div>
        </div>
    </div>
    <!--boton de división-->
    <div class="d-grid gap-2 col-6 mx-auto">
        <a class="btn btn-outline-light" data-bs-toggle="modal" href="#exampleModalToggle13" role="button">Equipo</a>
    </div>

    <!------------------------------------------------------------------------------------------------->
    <br><br>

    <!--PARTIDO-->
    <!--modal numero17-->
    <div class="modal fade" id="exampleModalToggle17" aria-hidden="true" aria-labelledby="exampleModalToggleLabel17"
        tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel17">selecciona una acción</h5>
                    <!--boton de cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--botones con acciones-->
                <div class="modal-body">
                    <div class="d-grid gap-2">
                        <button class="btn btn-dark d-grid gap-2" data-bs-target="#exampleModalToggle18"
                            data-bs-toggle="modal">Agregar</button><br>
                            <button class="btn btn-dark d-grid gap-2" data-bs-target="#exampleModalToggle19"
                            data-bs-toggle="modal">Modificar</button><br>
                        <button class="btn btn-dark d-grid gap-2" data-bs-target="#exampleModalToggle20"
                            data-bs-toggle="modal">Eliminar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--modal numero 18 agregar-->
    <div class="modal fade" id="exampleModalToggle18" aria-hidden="true" aria-labelledby="exampleModalToggleLabel18"
        tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel18">Agregar</h5>
                    <!--boton cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--form del modal 2-->
                <div class="modal-body">

                   <!--pedir deporte, deben ser deportes que aparezcan dentro de a bd-->
                 <p class="textop fw-bold">seleccionar deporte</p>
                 <div class="input-group mb-3">
                     <select class="form-select" id="inputGroupSelect01">
                         <option selected>Seleccionar...</option>
                         <option value="1">Basketball</option>
                         <option value="2">Boxeo</option>
                         <option value="3">Football</option>
                         <option value="4">Handball</option>
                         <option value="5">Hockey</option>
                         <option value="6">Tennis</option>
                         <option value="7">Rugby</option>
                         <option value="8">Natación</option>
                         <option value="9">Volleyball</option>
                         <option value="10">Fórmula 1</option>
                     </select>
                 </div>

                  <!--pedir división-pais, deben ser deportes que aparezcan dentro de a bd-->
                  <p class="textop fw-bold">seleccionar división-pais</p>
                  <div class="input-group mb-3">
                      <select class="form-select" id="inputGroupSelect01">
                          <option selected>Seleccionar...</option>
                          <option value="1">africa</option>
                          <option value="2">internacional</option>
                          <option value="3">uruguay</option>
                          <option value="4">asia</option>
                          <option value="5">alemania</option>
                      </select>
                  </div>

                  <!--pedir liga, deben ser deportes que aparezcan dentro de a bd-->
                  <p class="textop fw-bold">seleccionar liga</p>
                  <div class="input-group mb-3">
                      <select class="form-select" id="inputGroupSelect01">
                          <option selected>Seleccionar...</option>
                          <option value="1">liga1</option>
                          <option value="2">liga2</option>
                          <option value="3">liga3</option>
                          <option value="4">liga4</option>
                          <option value="5">liga5</option>
                      </select>
                  </div>

                  <p class="textop fw-bold">ingresar equipo 1</p>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" aria-label="Sizing example input">
                    </div>

                    <p class="textop fw-bold">ingresar equipo 2</p>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" aria-label="Sizing example input">
                    </div>

                  <p class="textop fw-bold">ingresar fecha del partido</p>
                    <div class="input-group mb-3">
                        <input type="date" class="form-control" aria-label="Sizing example input">
                    </div>

                    <p class="textop fw-bold">ingresar un codigo de partido</p>
                    <div class="input-group mb-3">
                        <input type="date" class="form-control" aria-label="Sizing example input">
                    </div>


                </div>
                <!--cierra modal-->

                <!--pie de pag regresar-->
                <div class="modal-footer">
                    <button class="btn btn-outline-dark" data-bs-target="#exampleModalToggle"
                        data-bs-toggle="modal">Regresar</button>
                    <button type="submit" class="btn btn-dark">Agregar</button>
                </div>
            </div>
        </div>
    





     <!--modal numero 19 modificar-->
     <div class="modal fade" id="exampleModalToggle19" aria-hidden="true" aria-labelledby="exampleModalToggleLabel19"
     tabindex="-1">
     <div class="modal-dialog modal-dialog-centered">
         <div class="modal-content">
             <div class="modal-header">
                 <h5 class="modal-title" id="exampleModalToggleLabel19">Modificar</h5>
                 <!--boton cerrar-->
                 <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
             </div>
             <!--form del modal 3-->
             <div class="modal-body">
                 <!--pedir codigo, deben ser codigos que aparezcan dentro de a bd-->
                 <p class="textop fw-bold">ingresar codigo de partido</p>
                 <div class="input-group mb-3">
                     <input type="name" class="form-control" aria-label="Sizing example input">
                 </div>

                 <!--modificar fecha-->
                 <p class="textop fw-bold">modificar fecha</p>
                 <div class="input-group mb-3">
                     <input type="date" class="form-control" aria-label="Sizing example input">
                 </div>

                 

             <!--pie de pag regresar-->
             <div class="modal-footer">
                 <button class="btn btn-outline-dark" data-bs-target="#exampleModalToggle"
                     data-bs-toggle="modal">Regresar</button>
                 <button type="submit" class="btn btn-dark">Modificar</button>
             </div>
         </div>
     </div>
 </div>




    <!--modal numero 20 eliminar-->
    <div class="modal fade" id="exampleModalToggle20" aria-hidden="true" aria-labelledby="exampleModalToggleLabel20"
        tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalToggleLabel20">Eliminar</h5>
                    <!--boton cerrar-->
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!--form del modal 4-->
                <div class="modal-body">
                </div>
                <!--pie de pag regresar-->
                <div class="modal-footer">
                    <button class="btn btn-outline-dark" data-bs-target="#exampleModalToggle"
                        data-bs-toggle="modal">Regresar</button>
                    <!--crear popper con js-->
                    <button type="submit" class="btn btn-dark">Eliminar</button>

                </div>
            </div>
        </div>
    </div>
    <!--boton de división-->
    <div class="d-grid gap-2 col-6 mx-auto">
        <a class="btn btn-outline-light" data-bs-toggle="modal" href="#exampleModalToggle17" role="button">Partido</a>
    </div>

    <!--se debe agregar para que se pueda visualizar los usuarios que 
    hay y pagan el premium, para poder gestionarlos-->


    <!--boton de regresar-->
    <br><br><br>
    <div class="d-grid gap-2 col-2 mx-auto">
        <input type="button" class="btn btn-light" value="Volver" onClick="history.go(-1);">
    </div>


</body>

</html>