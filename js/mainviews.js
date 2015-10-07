 $(document).ready(function() {
        
       $("#content").load("views/home.html");

});

function loadhome(){
	$("#content").load("views/home.html");
	$('#1').attr("class", "active"); 
	$('#2').attr("class", ""); 
	$('#3').attr("class", ""); 
	$('#4').attr("class", ""); 
	$('#5').attr("class", ""); 
	$('#6').attr("class", "");
}

function loadlista(){
	$("#content").load("views/lista_espera.html");
	$('#1').attr("class", ""); 
	$('#2').attr("class", "active"); 
	$('#3').attr("class", ""); 
	$('#4').attr("class", ""); 
	$('#5').attr("class", ""); 
	$('#6').attr("class", "");
}

function loadalta(){
	$("#content").load("views/alta_espera.html");
	$('#1').attr("class", ""); 
	$('#2').attr("class", "");
	$('#3').attr("class", "active"); 
	$('#4').attr("class", "");
	$('#5').attr("class", "");
	$('#6').attr("class", "");
}

function loadestadisticas(){
	$("#content").load("views/estadisticas.html");
	$('#1').attr("class", "");
	$('#2').attr("class", "");
	$('#3').attr("class", ""); 
	$('#4').attr("class", "active");
	$('#5').attr("class", ""); 
	$('#6').attr("class", "");
}

function loadalumnos(){
	$("#content").load("views/alumnos.html");
	$('#1').attr("class", "");
	$('#2').attr("class", "");
	$('#3').attr("class", ""); 
	$('#4').attr("class", "");
	$('#5').attr("class", "active");
	$('#6').attr("class", "");
}

function loadguia(){
	$("#content").load("views/guia.html");
	$('#1').attr("class", "");
	$('#2').attr("class", "");
	$('#3').attr("class", ""); 
	$('#4').attr("class", "");
	$('#5').attr("class", "");
	$('#6').attr("class", "active"); 
}