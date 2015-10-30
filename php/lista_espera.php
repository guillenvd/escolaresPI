<?php
/*	Include principal para la conexión a la base de datos*/
include("conexion.php");
$sqlGetLista = "SELECT nombre, turno, estado, carrera, ficha_inscripcion FROM alumnos";
$i = 0;
$rawdata = array();
$result = $conn->query($sqlGetLista); 

	while($row = mysqli_fetch_array($result)) {
	    	$rawdata[$i] = $row;
	    	$i++;
	}

	$array = json_encode($rawdata);
	print_r($array);

?>