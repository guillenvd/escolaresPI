         var h = document.getElementById('testdivH');
            var m = document.getElementById('testdivM');
            var s = document.getElementById('testdivS');            
            var tiempo = {
                        hora: 0,
                        minuto: 0,
                        segundo: 5
                    };
            var inter = setInterval(function(){time()},1000);
            
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
                    document.getElementById( 'timer-beep' ).play();
                    $( "#n_ficha" ).prop({disabled: false});
                    $( "#n_ficha" ).focus();
                    $.growl.error({ message: "Verifique que su ficha de inscripción sea la correcta." });
                    $.growl.notice({ message: "Puede continuar con su tramite." });
                }

                $("#testdivH").text(tiempo.hora < 10 ? '0' + tiempo.hora : tiempo.hora);
                $("#testdivM").text(tiempo.minuto < 10 ? '0' + tiempo.minuto : tiempo.minuto);
                $("#testdivS").text(tiempo.segundo < 10 ? '0' + tiempo.segundo : tiempo.segundo);

            }

$(document).keypress(function(e) {
    if(e.which == 13) {
        alert($('#n_ficha').val());
    }
});