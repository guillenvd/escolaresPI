<?php
include("conexion.php");
$FullName ="dav ";
$Date = date("Y-m-d H:m:s");
$sqlCoutn = "SELECT COUNT(turno) as atendidos FROM alumnos where estado = 2";
$sqlGetprom = "SELECT * FROM alumnos where estado = 2";
$result = $conn->query($sqlCoutn);
$promedioTiempo=0;
    while($row = $result->fetch_assoc()) {
        if ($row["atendidos"] >= 2){
        	$sumaProm =0;
        	$result = $conn->query($sqlGetprom);
		    while($rowAtendidos = $result->fetch_assoc()){
		    	$time1 =  new DateTime($rowAtendidos['hora_inicio']);
		    	$time2 =  new DateTime($rowAtendidos['hora_fin']);
		        $suma = $time1->diff($time2);
		        $sumaProm += (int)$suma->format('%i');
		    }
		    $promedioTiempo=ceil( $sumaProm  / $result->num_rows) ;
        }
        else{
        	$promedioTiempo = 11;
        }
    }

echo  $promedioTiempo;
/*
	contar numero de alumnos
	cual promedio de tiempo
	$sql = "INSERT INTO alumnos (nombre, fecha, tiempo_estimado, turno, estado, carrera,ficha_inscripcion)
	VALUES ('".$FullName ."','".$Date."', '00:15:00',1,1,1,1)";
	if ($conn->query($sql) === TRUE) {
	} else {
	}
	$conn->close();

*/
	$json = array("key1" => $_GET["Nomb"],"key2" => $_GET["Fi"],"key3" => $_GET["Carrera"]);
	echo json_encode($json);
?>