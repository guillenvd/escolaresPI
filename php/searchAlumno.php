<?php
/*
	Include principal para la conexión a la base de datos
*/
include("conexion.php");
$Indice = date("Y-m-d");// Fecha actual, ejemplo 2015-12-31 23:59:59

$sqlGetTurno = "SELECT * FROM alumnos WHERE  ficha_inscripcion =".(int)$_GET['Ficha']." limit 1";
$alumno = array();
$estado = 0;
// ir por cantidad de alumnos
	$result = $conn->query($sqlGetTurno); //ir por los aspirantes del día en curso
	if ($result->num_rows > 0) {
	    while($row = $result->fetch_assoc()) {
	    	$alumno =  array('Nombre' =>$row['nombre'],'Carrera' => $row['carrera'],'Fecha' =>$row['indice'],'Ficha' =>$row['ficha_inscripcion'],'Turno' => $row['turno'],'Estado' =>$row['estado']);
	    }
	} else {
	    $estado = 1;
	}
	$arrayName = array('estado' => $estado ,'Alumno' => $alumno);
	echo json_encode($arrayName);
?>