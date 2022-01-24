// Récupérer tous les sélecteurs .question
// Pour chaque sélecteur :
// Récupérer le sélecteur .question-btn
// Ecouter les évènements 'click' sur .question-btn
// Si une autre question est visible supprimer .show-text de celle-ci
// Ajouter .show-text à la question qui a reçu le 'click' pour afficher le texte

let questions = document.querySelectorAll(".question");


questions.forEach(function(question){

    let btn = question.querySelector(".question-btn");

    btn.addEventListener("click", function(){

        questions.forEach(function(item){

            if
            (item != question){

                item.classList.remove("show-text");
            }
        })
        question.classList.toggle("show-text");
    })
})


// btn.addEventListener("click", function(e){
//     const id = e.target.dataset.classList;
//     btn.classList.toggle("question-btn");

//     if(classList){
//         question.forEach(function(btn){
//             btn.classList.remove("active");
//     });

//     e.target.classList.add("active");
//     question.forEach(function (question) {
//         question.classList.remove("active");
//       });

//       const element = document.getElementById(classList);
//       element.classList.add("active");
//     }

    
    


// });