// let enterButton = document.getElementById("enter");
// let input = document.getElementById("input");
// let ul = document.querySelector("ul");
// let item = document.getElementsByTagName("li");


// function inputLenght(){
//     return input.value.lenght;
// }

// function createListElement(){

//     let li = document.createElement("li");
//     li.appendChild(document.createTextNode(input.value)); // <-- ce qui est entré par l'utilisateur
//     ul.appendChild("li"); // <-- ajout de li a ul
//     input.value = ""; // <-- reset le champs 


//     function crossOut(){
//         li.classList.toggle("done");
//     }

//     li.addEventListener("click", crossOut);


//     let suppr = document.createElement("button");
//     suppr.appendChild(document.createTextNode("X"));
//     li.appendChild(suppr);
//     suppr.addEventListener("click", deleteListItem);
// }

// button quitter
let liste = document.getElementsByTagName("LI");
let i;
for (i = 0; i < liste.length; i++) {
  let span = document.createElement("SPAN");
  let text = document.createTextNode("\u00D7");
  span.className = "close";
  span.appendChild(text);
  liste[i].appendChild(span);
}

// cliquer sur la croix pour cacher ce qui a été fait
let close = document.getElementsByClassName("close");
for (i = 0; i < close.length; i++) {
  close[i].onclick = function() {
    let div = this.parentElement;
    div.style.display = "none";
  }
}

// cocher quand fait
let list = document.querySelector('ul');
list.addEventListener('click', function(e) {
  if (e.target.tagName === 'LI') {
    e.target.classList.toggle('checked');
  }
});

// Créer une liste LI avec le bouton ajouter
function newElement() {
  let li = document.createElement("li");
  let inputValue = document.getElementById("myInput").value;
  let ok = document.createTextNode(inputValue);
  li.appendChild(ok);
  if (inputValue === '') {
    alert("You must write something!");
  } else {
    document.getElementById("myUL").appendChild(li);
  }
  document.getElementById("myInput").value = "";

  let span = document.createElement("SPAN");
  let text = document.createTextNode("\u00D7");
  span.className = "close";
  span.appendChild(text);
  li.appendChild(span);

  for (i = 0; i < close.length; i++) {
    close[i].onclick = function() {
      let div = this.parentElement;
      div.style.display = "none";
    }
  }
}