// document.getElementById("valider").addEventListener("submit", function(e){
//     e.preventDefault();
//     let nom = document.getElementById("nom");
//     let prenom = document.getElementById("prenom");
//     let date = document.getElementById("date");
//     let mail = document.getElementById("mail");
//     let pw = document.getElementById("pw");
//     let conf = document.getElementById("conf");

//     if (nom.value.length < 2)
//     alert("formulaire envoyé");
// });

// function validateEmail(email) {
//     let re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
//     return re.test(email);
//     }
    
//     function Verification() {
//     // Récupérer lavaleur des champs nom et email
//     let Nom = document.getElementById('idNom').value;
//     let Email = document.getElementById('idEmail').value;
    
//     // Contrôle sur le nom
//     if(Nom==''){
//     alert('Vous devez compléter votre nom !');
//     document.getElementById('idNom').style.backgroundColor="red";
//     document.getElementById('idNom').style.color="#FFF";
    
//     // Permet de bloquer l'envoi du formulaire
//     return false;
//     }
//     else{
//     document.getElementById('idNom').style.backgroundColor="#9C6";
//     }
    
//     // Contrôle sur l'email
//     if(Email=='') {
//     alert('Vous devez compléter votre adresse email');
//     document.getElementById('idEmail').style.backgroundColor="red";
//     document.getElementById('idEmail').style.color="#FFF";
//     return false;
//     }
    
//     else{
//     document.getElementById('idEmail').style.backgroundColor="#9C6";
//     }
//     }
    