$(window).resize(function(){
          $("#DateCountdown").TimeCircles().rebuild();
    });

$("#DateCountdown").TimeCircles({
        "animation": "smooth",
        "bg_width": 0.5,
        "fg_width": 0.023333333333333334,
        "circle_bg_color": "#60686F",
          "time": {
            "Days": {
              "text": "Días",
              "color": "#FFCC66",
              "show": false
            },
            "Hours": {
              "text": "Horas",
              "color": "#99CCFF",
              "show": false
            },
            "Minutes": {
              "text": "Minutos",
              "color": "#BBFFBB",
              "show": true
            },
            "Seconds": {
              "text": "Segundos",
              "color": "#FF9999",
               "show": true
            }
          }
  });