
<?php
try {
$conexion = new PDO("mysql:host=localhost;dbname=web-lmar;charset=utf8", "root",
"root"); 
echo "Se ha establecido una conexión con el servidor de bases de datos.";
} catch (PDOException $e) {
echo "No se ha podido establecer conexión con el servidor de bases de
datos.<br>";
die ("Error: " . $e->getMessage());
}
if (isset($_REQUEST["nombre"])) {
   $nombre=$_REQUEST["nombre"];
   $email=$_REQUEST["email"];
   $fecha=$_REQUEST["fecha"];
   $localidad=$_REQUEST["localidad"];
   $conexion->exec("INSERT INTO usuarios (nombre_apellidos, email, fecha, localidad) VALUES ('$nombre', '$email', $fecha, '$localidad')");
}
?>


<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FitPlanner | Iniciar sesión</title>

    <link rel="icon" href="images/logo.png" type="image/png">
    <link rel="icon" href="images/logo.png" type="image/png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="inicia.css">



    
</head>
<body>
        <div class="logo">
         <a href="web_entrada.html"><img src="images/logo.png" alt="FitPlanner" class="logo"></a>
        </div>

    <!-- CONTENEDOR PRINCIPAL -->
    <div class="contenedor">
        
        <!-- CUADRO ROJO -->
        <div class="caja">
            <h1>Iniciar sesión</h1>
            <p>Forma parte de FitPlanner y comienza tu cambio físico</p>

            <form action="#" method="post" class="formu">
                <input type="text" name="nombre" placeholder="Nombre y apellidos" required>
                <input type="email" name="email"placeholder="Correo electrónico" required>
                <input type="date" name="fecha" required>
                <input type="text" name="localidad" placeholder="Localidad" required>

                <input type="submit" value="registrarse">
            </form>
        </div>

    </div>

</body>
</html>
