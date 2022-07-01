<?php
include("conex.php");
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
} else {
  $sql = "SELECT * FROM banners ORDER BY RAND() LIMIT 1"; 
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc()) {
      $datos = "Id: " . $row["id"] . ", Nombre: " . $row["nombre"] . ", URL: " . $row["url"] . ", Imagen: " . $row["imagen"];
    }

    $json_mensaje = json_encode($datos);
    echo $json_mensaje;
    
  } else {
    echo "0 results";
  }

  $conn->close();
}
