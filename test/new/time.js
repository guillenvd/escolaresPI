    var tiempo = {  hora: 0, minuto: 0, segundo:0  };      
    var inter = null;
    var request = null;
    function time(){ 
        if(tiempo.segundo > 0){
            tiempo.segundo --;
        }
        else if(tiempo.segundo == 0 && tiempo.minuto > 0){
            tiempo.minuto --;
            tiempo.segundo = 59
        }
        else if(tiempo.minuto == 0 && tiempo.hora > 0){
            tiempo.hora --;
            tiempo.minuto = 59
        }
        else if(tiempo.segundo == 0 && tiempo.minuto == 0 && tiempo.hora ==0  ){
            clearInterval(inter);
            document.getElementById('timer-beep' ).play();
            $( "#n_ficha" ).prop({disabled: false});
            $( "#n_ficha" ).focus();
            if($('nficha').val()==0){
                request = setInterval(function(){searchAlumno(0);},500);
            }
        }
        $("#testdivH").text(tiempo.hora < 10 ? '0' + tiempo.hora : tiempo.hora);
        $("#testdivM").text(tiempo.minuto < 10 ? '0' + tiempo.minuto : tiempo.minuto);
        $("#testdivS").text(tiempo.segundo < 10 ? '0' + tiempo.segundo : tiempo.segundo);
    }
    function searchAlumno(num) {
            var parameter = {Turno:num,Get:1};
            console.log(parameter);
            $.get("http://localhost/universidad/escolares/php/turnos.php", parameter ,function( data ) {
                var jsonResponse  = jQuery.parseJSON(data);
                console.log(jsonResponse);
                if(jsonResponse.estado==0) {
                    $('#nficha').val(jsonResponse.Alumno.ficha);
                    tiempo.minuto = jsonResponse.Alumno.tiempo;
                    $('#time').text(jsonResponse.Alumno.turno);
                    inter = setInterval(function(){time()},1000);
                    clearInterval(request);
                }
                else{
                    connsole.log('no se encontro nada');
                }                    
            });
    }
    function checkInning(){
        var parameter = {Turno:parseInt($('#time').text()),Get:2, Ficha:$('#n_ficha').val()};
        console.log(parameter);
        $.get("http://localhost/universidad/escolares/php/turnos.php", parameter ,function( data ) {
            var jsonResponse  = jQuery.parseJSON(data);
            console.log(jsonResponse);
            if(jsonResponse.estado==1) {
                $.growl.error({ message: "Verifique que su ficha de inscripción sea la correcta." });
            }
            else{
                $( "#n_ficha" ).val();
                $( "#n_ficha" ).prop({disabled: false});
                $.growl.notice({ message: "Puede continuar con su tramite." });
                $('#nficha').val(jsonResponse.Alumno.ficha);
                tiempo.minuto = jsonResponse.Alumno.tiempo;
                $('#time').text(jsonResponse.Alumno.turno);
                inter = setInterval(function(){time()},1000);
             }                    
         });
    }


$(document).ready(function () {
    searchAlumno($('#time').text());
    //window.history.pushState("VENTANA DE TURNOS", "VENTANA DE TURNOS", "/ventanaDeTurnos");
});

$(document).keypress(function(e) {
    if(e.which == 13 && tiempo.minuto == 0 && tiempo.segundo == 0){
        checkInning();   
    }
});