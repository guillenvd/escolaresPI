<?php
	$host = 'localhost';
	$user = 'root';
	$pw	  = '';
	$db   = 'escolarespi_db';

// Create connection
			$conexion = mysqli_connect($host,$user,$pw,$db);
		//	if (mysqli_connect_errno()){
		//		echo "No se pudo conectar a la base de datos" . mysqli_connect_error();
		//	}else{
			//	echo "conexión exitosamente realizada";
		//	}

?> 