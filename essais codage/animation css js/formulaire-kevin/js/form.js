let form = document.querySelector('form'); // il lui donne un nom puis choppe la classe
let ecoute_Nom = document.querySelector('.nom'); // il lui donne un nom puis choppe la classe
let ecoute_Prenom = document.querySelector('.prenom');// il lui donne un nom puis choppe la classe
let ecoute_Date = document.querySelector('.date');// il lui donne un nom puis choppe la classe
let ecoute_Mail = document.querySelector('.mail');// il lui donne un nom puis choppe la classe
let ecoute_Pwd = document.querySelector('.pwd');// il lui donne un nom puis choppe la classe
let ecoute_Cpwd = document.querySelector('.cpwd');// il lui donne un nom puis choppe la classe
let submit = document.querySelector('button');// il lui donne un nom puis choppe la classe
let compteur = 0; // +1 pour chaque ligne d'infos valide

submit.addEventListener('click',function(){ // fonction du bouton submit on écoute ce que ça produit

    let lesP= form.querySelectorAll('p'); // ce sont les messages d'erreurs qui sont ciblés
    lesP.forEach(function(p){ // fonction qui remet les messages d'erreurs a 0
        p.remove();
    });

    if(ecoute_Nom.value != "" && ecoute_Nom.value.length >2){ // observe la value de nom et si il y a moins de 3 caracteres c'est invalide
        compteur = compteur + 1;
    }else{
        ecoute_Nom.insertAdjacentHTML("beforebegin", '<p> mauvaise saisie! plus de 3 caracteres au pire change de nom!</p>');
    } // importe du texte qui n'existe pas dans le code en message d'erreur
    if(ecoute_Prenom.value != "" && ecoute_Prenom.value.length >2){ // observe la value de nom et si il y a moins de 3 caracteres c'est invalide
        compteur = compteur + 1;
    }else{
        ecoute_Prenom.insertAdjacentHTML("beforebegin", '<p> mauvaise saisie! plus de 3 caracteres au pire change de prenom!</p>');
    } // importe du texte qui n'existe pas dans le code en message d'erreur
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


