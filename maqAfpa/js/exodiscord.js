/* 2/ Écrivez un programme JavaScript dans lequel le programme prend un nombre entier aléatoire compris entre 1 et 10, 
l'utilisateur est ensuite invité à saisir un nombre. Si l'entrée de l'utilisateur correspond au nombre du programme, 
le programme affichera un message « Bon travail », sinon affichera un message « Pas de correspondance ».

function bananas(){
    let bananitas = math.floor(Math.random()*10);
    console.log(bananitas);
    return bananitas ;
}

bananas();
let megaBanana = banana();
let nombre = +prompt("");
let bingo =(megaBanana == nombre) ? "trouvé" : " pas trouvé";
alert(bingo);
*/




/*
//3/ Ecrivez un programme JavaScript pour calculer la multiplication et la division de deux nombres (entrée de l'utilisateur).
//DIVISION ET MULTIPLICATION
function multi(n1, n2){
  
 let produit = n1 * n2;  // Calcul de la somme.
 let quotient = n1/n2;
 return "le produit : " +produit + " le quotient :  " + quotient  ;         // Renvoi de la réponse.
     
}
 let nombre_1 = +prompt("Veuillez saisir un nombre");
 let nombre_2 = +prompt("Veuillez saisir un nombre");
 let message = multi(nombre_1,nombre_2);
 document.write(message);


 // 2E METHODE 
//SANS FONCTION

 let n1 = +prompt("Veuillez saisir un nombre");
 let n2 = +prompt("Veuillez saisir un nombre");
  
 let produit = n1 * n2;  // Calcul de la multiplication.
 let quotient = n1/n2;  // Calcul de la division.
                        
     

 
 
 document.write("le produit : " +produit + " le quotient :  " + quotient  ); // Renvoi de la réponse.

 */

/*
 //4/ Ecrivez un programme JavaScript pour convertir les températures depuis Celsius vers Fahrenheit. La formule : (1 °C × 9/5) + 32 = 33,8 °F
 
 let celsius = +prompt("Veuillez entrer la température en celsius");
 let Fahrenheit = celsius*(9/5)+32;
 document.write("La température en fahrenheit :"+Fahrenheit)

 */


 /*
 //5/ Ecrivez un programme JavaScript pour obtenir la différence entre un nombre donné et 13, si le nombre est supérieur à 13, renvoyez le double de la différence absolue.



 let nombre = +prompt('Nombre');

 function difference(nbr) {
         let differ = (nbr-13)*2;
         //console.log(differ);
         return Math.abs(differ);
 }
 
 if(nombre>13){
     //let newDifference = difference(nombre);
     //alert(newDifference);
     alert(difference(nombre));
 }
*/


/*
//6/ Ecrivez un programme JavaScript pour calculer la somme des deux entiers donnés par l’utilisateur. Si les deux valeurs sont identiques, 
//on renvoie alors le triple de leur somme.


let nombre_1 = +prompt("Veuillez entrer un nombre");
let nombre_2 = +prompt("Veuillez entrer un nombre");
let resultat;

if(nombre_1 == nombre_2){
    resultat = (nombre_1+ nombre_2)*3;
}else{
    resultat = nombre_1 + nombre_2;
}
alert(resultat);

*/


/*
//7/ Ecrivez un programme JavaScript pour calculer la différence absolue entre un nombre spécifié et 19. On renvoie le triple de leur 
//différence absolue si le nombre spécifié est supérieur à 19.


let nbr_1 = +prompt("saisir 1 nombre");
let nbr_2 = +prompt("saisir 1 autre nombre");

function calcul(a,b){
    let somme;
    if(a==b){
      somme = (a+b)*3;
  } else {
      somme = a+b;
  }
  return somme;
}

let affichage = calcul(nbr_1, nbr_2);
document.write(affichage);

 */


 //8/ Écrire un programme JavaScript pour vérifier deux nombres donnés par l’utilisateur et retourner vrai si l'un des nombres est 50 ou si leur somme est 50

//let nombre_1 = +prompt("Veuillez entrer un nombre");
//let nombre_2 = +prompt("Veuillez entrer un nombre");

//let resultat =((nombre_1 ==50 || nombre_2 ==50)||(nombre_1 + nombre_2==50))? "true" : "false";


/*
//9/ Ecrivez un programme JavaScript pour créer une nouvelle chaîne en ajoutant "Py" devant une chaîne donnée. Si la chaîne donnée 
//commence par "Py", retourne la chaîne d'origine.

let fruits = ["Apple"];
fruits.unshift("Py");
for(let i=0; i<fruits.length ;i++){
alert(fruits[i]);
}
*/

//10/ Ecrivez un programme JavaScript pour créer une nouvelle chaîne à partir d'une chaîne donnée en changeant la position du premier et 
//du dernier caractère. La longueur de la chaîne doit être supérieure ou égale à 1.




