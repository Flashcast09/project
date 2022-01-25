let form = document.querySelector('form');
let ecoute_Nom = document.querySelector('.nom');
let ecoute_Prenom = document.querySelector('.prenom');
let ecoute_Date = document.querySelector('.date');
let ecoute_Mail = document.querySelector('.mail');
let ecoute_Pwd = document.querySelector('.pwd');
let ecoute_Cpwd = document.querySelector('.cpwd');
let submit = document.querySelector('button');
let compteur = 0;

submit.addEventListener('click',function(){

    let lesP= form.querySelectorAll('p');
    lesP.forEach(function(p){
        p.remove();
    });

    if(ecoute_Nom.value != "" && ecoute_Nom.value.length >2){
        compteur = compteur + 1;
    }else{
        ecoute_Nom.insertAdjacentHTML("beforebegin", '<p> mauvaise saisie! plus de 3 caracteres au pire change de nom!</p>');
    }
    if(ecoute_Prenom.value != "" && ecoute_Prenom.value.length >2){
        compteur = compteur + 1;
    }else{
        ecoute_Prenom.insertAdjacentHTML("beforebegin", '<p> mauvaise saisie! plus de 3 caracteres au pire change de prenom!</p>');
    }
    if(ecoute_Date.value!=""){
        compteur = compteur + 1
    }else{
        ecoute_Date.insertAdjacentHTML("beforebegin", '<p>et avec une date?</p>');
    }
    if(ecoute_Mail.value.indexOf('@') == -1){
        ecoute_Mail.insertAdjacentHTML("beforebegin", '<p> essaies avec une vraie adresse mail pour voir!</p>');
    }else{
        compteur = compteur + 1;
    }
    if(ecoute_Pwd.value != ecoute_Cpwd.value || ecoute_Pwd < 8){
        ecoute_Pwd.insertAdjacentHTML("beforebegin", '<p> Mdp trop petit comme ton cerveau ou different de ta confirmation de Mdp et la je peux rien pour toi...</p>');
    }else{
        compteur = compteur + 1;
    }

    if(compteur==5){
        ecoute_Nom.value="";
        ecoute_Prenom.value="";
        ecoute_Date.value="";
        ecoute_Mail.value="";
        ecoute_Pwd.value="";
        ecoute_Cpwd.value="";
        alert("c'est good! les infos sont sur le serveur")
    }else{
        compteur = 0;
    }

})


