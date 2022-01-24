'use strict';

// Déclaration des varaibles
let euro = document.getElementById("euro");
let dollars = document.getElementById("dollars");
let yen = document.getElementById("yen");
let rouble = document.getElementById("rouble");
let btnConvert = document.getElementById("convert");
let fond = document.getElementById("fond")

const cls = ["bg_euro", "bg_dollars", "bg_yen", "bg_rouble"];

// Fonction de convertion
btnConvert.addEventListener("click", function() {
    if (euro.value>0) {     //Convertion Euro
        dollars.value=(euro.value*1.14)+" $";
        yen.value=(euro.value*130.41)+" ¥";
        rouble.value=(euro.value*87.04)+" ₽";
        euro.value=(euro.value*1)+" €";
        fond.classList.remove(...cls);
        fond.classList.add("bg_euro");
    } else if (dollars.value>0) {       //Convertion Dollar
        yen.value=(dollars.value*114.55)+" ¥";
        rouble.value=(dollars.value*76.61)+" ₽";
        euro.value=(dollars.value*0.88)+" €";
        dollars.value=(dollars.value*1)+" $";
        fond.classList.remove(...cls);
        fond.classList.add("bg_dollars");
    } else if (yen.value>0) {       // Convertion Yen
        rouble.value=(yen.value*0.67)+" ₽";
        euro.value=(yen.value*0.0077)+" €";
        dollars.value=(yen.value*0.0087)+" $";
        yen.value=(yen.value*1)+" ¥";
        fond.classList.remove(...cls);
        fond.classList.add("bg_yen");
    } else if (rouble.value>0) {        //Convertion Rouble
        euro.value=(rouble.value*0.011)+" €";
        dollars.value=(rouble.value*0.013)+" $";
        yen.value=(rouble.value*1.49)+" ¥";
        rouble.value=(rouble.value*1)+" ₽";
        fond.classList.remove(...cls);
        fond.classList.add("bg_rouble");
    }else{
        alert("choisir une valeur numérique");
    }
}
)