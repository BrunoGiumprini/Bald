<?php
$servername = "localhost";
$username = "root";
$password = "";
$base_de_datos = "ejemplo";

// Create connection
$conn = new mysqli($servername, $username, $password, $base_de_datos);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
} else {
  $sql = "SELECT * FROM persona";
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc()) {
      $datos = "id: " . $row["id"] . ", Nombre: " . $row["nombre"] . ", link: " . $row["link"];
    }

    $json_mensaje = json_encode($datos);
    echo $json_mensaje;
    
  } else {
    echo "0 results";
  }

  $conn->close();
}
