// const items = document.querySelectorAll('img');
// const nbSlide = items.length;
// const suivant = document.querySelector('.right');
// const precedent = document.querySelector('.left');
// let count = 0;

// function slideSuivante(){
//     items[count].classList.remove('active');

//     if(count < nbSlide - 1){
//         count++;
//     } else {
//         count = 0;
//     }

//     items[count].classList.add('active')
//     console.log(count);
    
// }
// suivant.addEventListener('click', slideSuivante)


// function slidePrecedente(){
//     items[count].classList.remove('active');

//     if(count > 0){
//         count--;
//     } else {
//         count = nbSlide - 1;
//     }

//     items[count].classList.add('active')
//     // console.log(count);
    
// }
// precedent.addEventListener('click', slidePrecedente)

// function keyPress(e){
//     console.log(e);
    
//     if(e.keyCode === 37){
//         slidePrecedente();
//     } else if(e.keyCode === 39){
//         slideSuivante();
//     }
// }

let form = document.querySelector('form'); // il lui donne un nom puis choppe la classe
let prenom = document.getElementById('prenom'); // il lui donne un nom puis choppe la classe
let nom = document.getElementById('nom'); // il lui donne un nom puis choppe la classe
let civilité = document.getElementById('civilite');// il lui donne un nom puis choppe la classe
let adresse = document.getElementById('adresse');// il lui donne un nom puis choppe la classe
let email = document.getElementById('email');// il lui donne un nom puis choppe la classe     //on recup tous les inputs form et button
let mdp = document.getElementById('password');// il lui donne un nom puis choppe la classe
let confmdp = document.getElementById('confpassword');// il lui donne un nom puis choppe la classe
let telephone = document.getElementById('telephone');// il lui donne un nom puis choppe la classe
let submit = document.getElementById('submit');// il lui donne un nom puis choppe la classe
let compteur = 0; // +1 pour chaque ligne d'infos valide sinon 0

submit.addEventListener('click',function(){ // fonction du bouton submit on écoute ce que ça produit

    let lesP= form.querySelectorAll('p'); // ce sont les messages d'erreurs qui sont ciblés
    lesP.forEach(function(p){ // fonction qui remet les messages d'erreurs a 0
        p.remove();
    });
    if(nom.value != "" && nom.value.length >2){ // observe la value de nom et si il y a moins de 3 caracteres c'est invalide
        compteur = compteur + 1;
    }else{
        nom.insertAdjacentHTML("beforebegin", '<p> mauvaise saisie! plus de 3 caracteres requis </p>');
    } // importe du texte qui n'existe pas dans le code en message d'erreur
    if(prenom.value != "" && prenom.value.length >1){ // observe la value de nom et si il y a moins de 3 caracteres c'est invalide
        compteur = compteur + 1;
    }else{
        prenom.insertAdjacentHTML("beforebegin", '<p> mauvaise saisie! plus de 2 caracteres requis </p>');
    } // importe du texte qui n'existe pas dans le code en message d'erreur
    if(civilite.value!=""){
        compteur = compteur + 1
    }else{
        civilite.insertAdjacentHTML("beforebegin", '<p>entrez une vraie nationalité</p>');
    } // importe du texte qui n'existe pas dans le code en message d'erreur
    if(email.indexOf('@ && .') == -1){ // vérifie la condition de présence de l'arobase
        email.insertAdjacentHTML("beforebegin", '<p> essaies avec une vraie adresse mail </p>'); // importe du texte qui n'existe pas dans le code en message d'erreur
    }else{ 
        compteur = compteur + 1;
    }
    if(mdp.value != confmdp.value || mdp < 8){ // on compare le password avec la confirmation avec un "ou"
        mdp.insertAdjacentHTML("beforebegin", '<p> Le mot de passe invalide</p>');
    }else{ // importe du texte qui n'existe pas dans le code en message d'erreur
        compteur = compteur + 1;
    }
    

    if(compteur==6){ // si toutes les infos sont valides alors le compteur sera a 5 validera toutes les infos avec une alerte et les valeurs des inputs seront reset
        nom.value="";
        prenom.value="";
        civilite.value="";
        email.value="";
        mdp.value="";
        confmdp.value="";
        alert("c'est good! les infos sont sur le serveur")
    }else{
        compteur = 0; // si un ou plusieurs inputs sont pas bons le compteur est reset.
    }
});
        