<?php
/*	Include principal para la conexión a la base de datos*/
include("conexion.php");
$sqlGetLista = "SELECT nombre, turno, estado, carrera, ficha_inscripcion FROM alumnos";
$return_arr = array();

$result = $conn->query($sqlGetLista); 

	while($row = mysqli_fetch_array($result)) {
	    array_push($return_arr,$row);
	}

	$array = json_encode($return_arr);
	echo $array

?>