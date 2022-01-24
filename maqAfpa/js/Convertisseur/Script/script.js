'use strict';

// Déclaration des varaibles
let euro = document.getElementById("euro");
let dollars = document.getElementById("dollars");
let yen = document.getElementById("yen");
let rouble = document.getElementById("rouble");
let btnConvert = document.getElementById("convert");

// Fonction de convertion
btnConvert.addEventListener("click", function() {
    if (euro.value>0) {
        dollars.value=(euro.value*1.14);
        yen.value=(euro.value*130.41);
        rouble.value=(euro.value*87.04);
    }
}
)