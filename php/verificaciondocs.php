<?php
include("conexion.php");
	if(isset($_POST['nombre']) && !empty($_POST['nombre']) && 
     isset($_POST['apellidos']) && !empty($_POST['apellidos']) &&
     isset($_POST['carrera']) && !empty($_POST['carrera']) && 
     isset($_POST['n_ficha']) && !empty($_POST['n_ficha'])){

	$conexion = mysql_connect($host, $user, $pw, $db) or die ("Problemas en Conexion");
		mysql_select_db($db, $conexion) or die("Problemas al conectar con la BD");
		mysql_query("INSERT INTO alumnos (nombre,apellidos,carrera,n_ficha)
      VALUES ('$_POST[nombre]','$_POST[apellidos]', '$_POST[carrera]', '$_POST[n_ficha]')", $conexion);
			echo "<br>datos insertados correctamente";

			echo "
				<script type=\"text/javascript\">
					function redireccionar(){
   					 location.href = \"../escolarespi.html\";
					} 
				setTimeout (\"redireccionar()\", 2000);
				</script>
			";
			?>
	


<?php
	}else{
			echo " 
				<script type=\"text/javascript\">
					function redireccionar(){
						alert(\"Campos Vacios\")
   					 location.href = \"../escolarespi.html\";

					} 
				setTimeout (\"redireccionar()\", 1000);
				</script>
			";
	}
?>